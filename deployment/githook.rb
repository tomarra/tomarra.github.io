require 'sinatra'
require 'thin'
require 'json'

git_user = "tomarra"
tmp_dir = "/tmp/jekyll/"
web_dir = "/var/www/"
output = ""
master_ref_tag "refs/head/master"

puts "Process ID: #{Process.pid}"

 get '/' do
   'OK'
 end

 post '/' do
  payload = JSON.parse(request.body.read)
  ref_tag = payload["ref"]

  if ref_tag == master_ref_tag
    site_name = payload["repository"]["name"]
    repo = "https://github.com/#{git_user}/#{site_name}.git"

    clone_cmd = "rm -rf #{tmp_dir}#{site_name}; git clone #{repo} #{tmp_dir}#{site_name};"
    output += `#{clone_cmd}`

    unless Dir.exists?("#{web_dir}#{site_name}")
      new_server_block_cmd = "./new_nginx_server_block.sh #{site_name}"
      output += "\n\nCreating Nginx site directories for #{site_name}\n\n"
      output += `#{new_server_block_cmd}`
    end

    if File.exists?("#{tmp_dir}#{site_name}/Gemfile")
      output += "\n\nBundling Gems\n"
      output += `pushd #{tmp_dir}#{site_name}; bundle; popd;`
    end

    build_cmd = "jekyll build --source #{tmp_dir}#{site_name} --destination #{web_dir}#{site_name}/public_html"

    output += "\n\nBuilding from source using Jekyll\n\n"
    output += `#{build_cmd}`
  else
    output += "Push was not to master. Not updating."
  end

  puts output
  output
end

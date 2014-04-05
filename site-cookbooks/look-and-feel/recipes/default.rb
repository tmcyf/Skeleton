directory "/var/www/nginx-default/" do
  owner node.user.name
  mode "0755"
  recursive true
end

cookbook_file "/var/www/nginx-default/index.html" do
  source "index.html"
  mode 0755
  owner node.user.name
end
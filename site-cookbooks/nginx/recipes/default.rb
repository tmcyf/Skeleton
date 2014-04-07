package 'python-software-properties'

bash 'adding stable nginx ppa' do
  user 'root'
  code <<-EOC
    add-apt-repository ppa:nginx/stable
    apt-get update
  EOC
end

package "nginx"

template "/etc/nginx/nginx.conf" do
  owner "root"
  group "root"
  mode "0644"
  source "nginx.conf"
  notifies :run, "execute[restart-nginx]", :immediately
end

execute "restart-nginx" do
  command "/etc/init.d/nginx restart"
  action :nothing
end
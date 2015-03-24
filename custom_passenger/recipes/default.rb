
include_recipe "nginx_passenger"
include_attribute "deploy"

#node.normal.nginx_passenger.sites_dir="#{node[:deploy][application][:deploy_to]}/current"

nginx_passenger_site "test" do
  action :create
  dir    "#{node[:deploy][application][:deploy_to]}/current"
  server "localhost"
  rails_env "production"
end

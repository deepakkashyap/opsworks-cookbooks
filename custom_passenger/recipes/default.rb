
include_recipe "nginx_passenger"


nginx_passenger_site "test" do
  action :create
  dir    "#{node[:deploy][application][:deploy_to]}/current"
  server "#{node[:opsworks][:instance][:ip]}"
  rails_env "production"
end

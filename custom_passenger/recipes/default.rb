
include_recipe "nginx_passenger"

nginx_passenger_site "test" do
  action :create
  dir    "#{node[:opsworks][:applications][:name]}/current"
  server "#{node[:opsworks][:instance][:ip]}"
  rails_env "production"
end

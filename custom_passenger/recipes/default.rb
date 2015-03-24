
include_recipe "nginx_passenger"


nginx_passenger_site "test-app" do
  action :create
  dir    "#{node[:deploy][application][:deploy_to]}/current"
  server "localhost"
  rails_env "production"
end

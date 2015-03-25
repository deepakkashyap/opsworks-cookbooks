
include_recipe "nginx_passenger"

nginx_passenger_site "test" do
  action :create
  dir    "/srv/www/sample_app/current"
  server "#{node[:opsworks][:instance][:ip]}"
  rails_env "production"
end

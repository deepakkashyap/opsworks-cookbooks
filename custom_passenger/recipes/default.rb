
include_recipe "nginx_passenger"
include_recipe "deploy"

default.nginx_passenger.sites_dir="#{node[:deploy][application][:deploy_to]}/current"


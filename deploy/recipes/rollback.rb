

if "#{node[:app][:state]}" == 'restart' 
  Chef::Log.info("#####   Restarting nginx   #####")
    
  service "nginx" do

   action :restart
   end
 else
  directory "/var/lib/deepak" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
 end

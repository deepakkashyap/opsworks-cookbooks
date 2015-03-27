

if "#{node[:app][:state]}" == 'restart' 
  Chef::Log.info("#####   Restarting nginx   #####")
    
  service "nginx" do

   action :restart
   end
 
 end

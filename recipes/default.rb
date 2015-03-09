template "/etc/php.ini" do
  source 'php.ini.erb'
  owner 'root'
  group 'root'
  mode 0644
  variables({
     :include_path => node['php-customize']['include_path']
  })
  notifies :restart, resources(:service => 'apache2')
end
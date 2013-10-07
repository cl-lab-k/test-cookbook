case node['platform']
when 'redhat','centos','scientific','amazon','oracle'
  include_recipe 'yum::epel'
when 'debian','ubuntu'
  include_recipe 'apt::default'
end

package 'nginx'

service 'nginx' do
  action [ :enable, :start ]
end

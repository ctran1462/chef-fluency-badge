#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.


package 'postgresql-server' do
	notifies :run, 'excecute[posgresql-init]'
end

excecute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end

crudini --set /etc/nova/nova.conf DEFAULT rpc_backend rabbit
crudini --set /etc/nova/nova.conf oslo_messaging_rabbit rabbit_host dev-controller
crudini --set /etc/nova/nova.conf oslo_messaging_rabbit rabbit_userid openstack
crudini --set /etc/nova/nova.conf oslo_messaging_rabbit rabbit_password healthseq
crudini --set /etc/nova/nova.conf DEFAULT auth_strategy keystone
crudini --del /etc/nova/nova.conf keystone_authtoken
crudini --set /etc/nova/nova.conf keystone_authtoken auth_uri http://dev-controller:5000
crudini --set /etc/nova/nova.conf keystone_authtoken auth_url http://dev-controller:35357
crudini --set /etc/nova/nova.conf keystone_authtoken auth_plugin password
crudini --set /etc/nova/nova.conf keystone_authtoken project_domain_id default
crudini --set /etc/nova/nova.conf keystone_authtoken user_domain_id default
crudini --set /etc/nova/nova.conf keystone_authtoken project_name service
crudini --set /etc/nova/nova.conf keystone_authtoken username nova
crudini --set /etc/nova/nova.conf keystone_authtoken password healthseq
crudini --set /etc/nova/nova.conf DEFAULT my_ip 10.0.2.25
crudini --set /etc/nova/nova.conf DEFAULT network_api_class nova.network.neutronv2.api.API
crudini --set /etc/nova/nova.conf DEFAULT security_group_api neutron
crudini --set /etc/nova/nova.conf DEFAULT linuxnet_interface_driver nova.network.linux_net.NeutronLinuxBridgeInterfaceDriver
crudini --set /etc/nova/nova.conf DEFAULT firewall_driver nova.virt.firewall.NoopFirewallDriver
crudini --set /etc/nova/nova.conf vnc my_ip 10.0.2.25
crudini --set /etc/nova/nova.conf vnc vncserver_listen 0.0.0.0
crudini --set /etc/nova/nova.conf vnc vncserver_proxyclient_address 10.0.2.25
crudini --set /etc/nova/nova.conf vnc novncproxy_base_url http://dev-controller:6080/vnc_auto.html
crudini --set /etc/nova/nova.conf glance host dev-controller
crudini --set /etc/nova/nova.conf oslo_concurrency lock_path /var/lib/nova/tmp
crudini --set /etc/nova/nova.conf DEFAULT verbose True

crudini --set /etc/nova/nova-compute.conf libvirt virt_type qemu

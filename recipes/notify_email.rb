package "libesmtp6"

collectd_plugin "notify_email" do
  options :From => "collectd@#{node['domain']}", 
          :Recipient => "hostmaster@#{node['domain']}",
          :SMTPServer => node['collectd']['mailserver']
end


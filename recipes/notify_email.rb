if platform?("ubuntu") #on precise
  package "libesmtp6"
else
  package "limesmtp5" #on debian 6
end

collectd_plugin "notify_email" do
  options :From => "collectd@#{node['domain']}", 
          :Recipient => "hostmaster@#{node['domain']}",
          :SMTPServer => node['collectd']['mailserver']
end


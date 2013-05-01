include_recipe "collectd"

collectd_plugin "threshold" do
  template "threshold.conf.erb"
end

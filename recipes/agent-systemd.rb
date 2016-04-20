
# Install systemd service configuration files
template "/lib/systemd/system/teamcity-agent.service" do
  source "systemd/teamcity-agent.erb"
  owner  "root"
  group  "root"
  variables(
      :user => node["teamcity_server"]["user"],
      :user_home => node["teamcity_server"]["user_home"],
      :root_dir => node["teamcity_server"]["root_dir"]
  )
end

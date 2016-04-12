name             "teamcity_server"
maintainer       "Brian Wallace"
maintainer_email "bpwallace@gmail.com"
license          "MIT"
description      "Installs TeamCity CI from JetBrains"
version          "0.2.3"

supports 'ubuntu'

recipe "teamcity_server::build_agent", "Install TeamCity build agent"
recipe "teamcity_server::server", "Install TeamCity server"
recipe "teamcity_server::default", "Install TeamCity server and build agent"

depends "java"

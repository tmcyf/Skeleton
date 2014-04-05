package 'fail2ban'
package 'unattended-upgrades'

file '/etc/apt/apt.conf.d/10periodic' do
	owner 'root'
  mode '0644'
  content <<-EOF
  APT::Periodic::Update-Package-Lists "1";
  APT::Periodic::Download-Upgradeable-Packages "1";
  APT::Periodic::AutocleanInterval "7";
  APT::Periodic::Unattended-Upgrade "1";
  EOF
end

file '/etc/cron.daily/ntpdate' do
	owner 'root'
  mode '0755'
  content <<-EOF
#!/bin/sh

ntpdate -s ntp.ubuntu.com pool.ntp.org
  EOF
end
# frozen_string_literal: true

audit = command(
  "/usr/bin/apt-config dump --no-empty --format '%f=%v%n' Unattended-Upgrade"
).stdout

options = {
  assignment_regex: /^\s*([^=]*?)\s*=\s*(.*?)\s*$/,
  multiple_values: true
}

control 'Apt unattended upgrades' do
  title 'should be configured'

  describe file('/etc/apt/apt.conf.d/50unattended-upgrades') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
  end

  describe file('/etc/apt/apt.conf.d/10periodic') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        'APT::Periodic::Enable "1";'
      )
    end
  end

  describe parse_config(audit, options) do
    its('Unattended-Upgrade::Allowed-Origins::') { should include 'origin1' }
    its('Unattended-Upgrade::Mail') { should include 'root' }
    its('Unattended-Upgrade::MailReport') { should include 'only-on-error' }
    its('Unattended-Upgrade::Package-Blacklist::') { should include 'salt-test' }
    its('Unattended-Upgrade::Automatic-Reboot') { should include 'False' }
    its('Unattended-Upgrade::SyslogEnable') { should include 'True' }
    its('Unattended-Upgrade::SyslogFacility') { should include 'auth' }
    its('Unattended-Upgrade::Remove-Unused-Dependencies') { should include 'True' }
    its('Unattended-Upgrade::Keep-Debs-After-Install') { should include 'False' }
    its('Unattended-Upgrade::Update-Days::') { should include 'Wed' }
  end
end

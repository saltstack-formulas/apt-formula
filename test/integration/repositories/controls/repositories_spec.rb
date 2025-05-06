# frozen_string_literal: true

control 'Apt repositories' do
  title 'should be configured'

  keyring_package = if os[:name] == 'ubuntu'
                      'ubuntu-keyring'
                    else
                      'debian-archive-keyring'
                    end

  describe package(keyring_package) do
    it { should be_installed }
  end

  describe file('/etc/apt/sources.list') do
    it { should exist }
    its(:size) { should eq 0 }
  end

  describe file('/etc/apt/sources.list.d') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end

  describe file('/etc/apt/sources.list.d/unmanaged.list') do
    it { should exist }
    its(:content) do
      should match("## unmanged list file that shouldn't be removed")
    end
  end

  describe file('/etc/apt/sources.list.d/heroku-binary.list') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        %r{deb \[arch=amd64\] https://cli-assets.heroku.com/apt ./}
      )
    end
  end

  describe file('/etc/apt/sources.list.d/my_raspbian_repo.list') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        %r{deb-src http://archive.raspbian.org/raspbian stable main}
      )
    end
  end

  describe file('/etc/apt/sources.list.d/raspbian-binary.list') do
    it { should_not exist }
  end

  describe file('/etc/apt/sources.list.d/saltstack.list') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        %r{deb \[\s?signed-by=/etc/apt/keyrings/salt-archive-keyring.pgp\s?\] https://packages.broadcom.com/artifactory/saltproject-deb stable main}
      )
    end
  end

  describe file('/etc/apt/keyrings/salt-archive-keyring.pgp') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
  end
end

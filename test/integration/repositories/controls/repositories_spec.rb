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

  describe file('/etc/apt/sources.list.d/spotify-binary.list') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        %r{deb \[arch=amd64\] http://repository.spotify.com stable non-free}
      )
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
end

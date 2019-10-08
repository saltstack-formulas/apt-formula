# frozen_string_literal: true

control 'Apt preferences' do
  title 'should be configured'

  describe file('/etc/apt/preferences') do
    it { should exist }
    its(:size) { should eq 0 }
  end

  describe file('/etc/apt/preferences.d') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end

  describe file('/etc/apt/preferences.d/00-rspamd') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        "Package: rspamd\nPin: origin rspamd.com\nPin-Priority: 650\n"
      )
    end
  end

  describe file('/etc/apt/preferences.d/01-all') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        "Package: *\nPin: release stable\nPin-Priority: 610\n"
      )
    end
  end

  describe file('/etc/apt/preferences.d/02-all') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        "Package: *\nPin: release testing\nPin-Priority: 600\n"
      )
    end
  end

  describe file('/etc/apt/preferences.d/03-all') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its(:content) do
      should match(
        "Package: *\nPin: release unstable\nPin-Priority: 50\n"
      )
    end
  end
end

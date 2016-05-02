require_relative '../../../kitchen/data/spec_helper'

describe 'apt.preferences' do

  describe file('/etc/apt/preferences') do
    it { should_not exist }
  end

  describe file('/etc/apt/preferences.d') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  describe file('/etc/apt/preferences.d/00-rspamd') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match("Package: rspamd\nPin: origin rspamd.com\nPin-Priority: 650\n") }
  end

  describe file('/etc/apt/preferences.d/01-all') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match("Package: *\nPin: release stable\nPin-Priority: 610\n") }
  end

  describe file('/etc/apt/preferences.d/02-all') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match("Package: *\nPin: release testing\nPin-Priority: 600\n") }
  end

  describe file('/etc/apt/preferences.d/03-all') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match("Package: *\nPin: release unstable\nPin-Priority: 50\n") }
  end

end

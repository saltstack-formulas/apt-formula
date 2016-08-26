require_relative '../../../kitchen/data/spec_helper'

describe 'apt.repositories' do

  describe package('debian-archive-keyring') do
    it { should be_installed }
  end

  describe file('/etc/apt/sources.list') do
    it { should exist }
    its(:size) { should eq 0 }
  end

  describe file('/etc/apt/sources.list.d') do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  describe file('/etc/apt/sources.list.d/debian-jessie-source.list') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match('deb-src http://httpredir.debian.org/debian jessie contrib non-free main') }
  end

  describe file('/etc/apt/sources.list.d/dropbox-binary.list') do
    it { should exist }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its(:content) { should match(%r{deb \[arch=i386,amd64\] http://linux.dropbox.com/debian jessie main}) }
  end
end

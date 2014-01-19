require 'ssh-fingerprint'

describe 'Fingerprint' do
  let(:key) do
    File.read(File.expand_path('../../support/id_rsa.pub', __FILE__))
  end
  
  # Obtained through ssh-keygen -lf ../support/id_rsa.pub
  let(:known_fingerprint) { 'f5:d8:39:1d:7c:26:0c:07:97:b2:d5:09:2f:dd:45:e4' }
  
  it 'should match known fingerprint' do
    SSHFingerprint.compute(key).should eq(known_fingerprint)
  end
end
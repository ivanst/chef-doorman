describe user('doorman') do
  it { should exist }
  its('home') { should eq '/home/doorman' }
  its('shell') { should eq '/bin/false' }
end

describe directory('/home/doorman') do
  it { should be_owned_by 'doorman' }
  its('type') { should eq :directory }
end

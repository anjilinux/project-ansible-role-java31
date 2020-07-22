describe package('openjdk-11-jdk') do
    it { should be_installed }
end
  
describe command('/usr/lib/jvm/java-11-openjdk-amd64/bin/java') do
    it { should be_exist }
end

describe command('java') do
    it { should be_exist}

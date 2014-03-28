Shindo.tests 'serverspec' do
  tests 'rubygems' do
    returns('1.0.0') { Serverspec::VERSION }
  end

  tests 'files' do
    returns(true) { File.symlink?('/usr/local/bin/serverspec-init') }
    returns('/opt/serverspec/embedded/bin/serverspec-init') {
      File.readlink('/usr/local/bin/serverspec-init')
    }
  end
end

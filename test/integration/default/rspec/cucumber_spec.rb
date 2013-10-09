describe 'cucumber command' do
  it 'run cucumber' do
    ruby_bin     = RbConfig::CONFIG['bindir'] + '/ruby'
    cucumber_bin = RbConfig::CONFIG['bindir'] + '/cucumber'
    cucumber_dir = File.expand_path( File.dirname( __FILE__ ) + '/cucumber' )
    %x{#{ruby_bin} #{cucumber_bin} #{cucumber_dir}}
    $?.to_i.should equal 0
  end
end

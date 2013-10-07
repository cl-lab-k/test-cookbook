require 'chefspec'

describe 'test-cookbook::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'test-cookbook::default' }

  it 'install package nginx' do
    expect(chef_run).to install_package 'nginx'
  end

  it 'start on boot nginx' do
    expect(chef_run).to set_service_to_start_on_boot 'nginx'
  end

  it 'start nginx' do
    expect(chef_run).to start_service 'nginx'
  end
end

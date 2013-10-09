# encoding: UTF-8

require 'open-uri'

When(/^I send a request to (\S+) by HTTP$/) do |host|
  @resource = open( "http://#{host}/" )
end

Then(/^I get a request status (\d+)$/) do |status|
  @resource.status[0].should == '200'
end

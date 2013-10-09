# encoding: UTF-8

require 'open-uri'

前提(/^: HTTPで (\S+) にリクエストする$/) do |host|
  @resource = open( "http://#{host}/" )
end

ならば(/^: 応答ステータスが (\d+) だ$/) do |status|
  @resource.status[0].should == '200'
end

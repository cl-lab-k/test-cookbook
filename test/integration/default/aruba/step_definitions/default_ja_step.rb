# encoding: UTF-8
# http://qiita.com/sawanoboly/items/48fe830d2ee3b6c87bf5

require 'open-uri'

前提(/^: HTTPで (\S+) にリクエストする$/) do |host|
  @resource = open( "http://#{host}/" )
end

ならば(/^: 応答ステータスが (\d+) だ$/) do |status|
  @resource.status[0].should == '200'
end

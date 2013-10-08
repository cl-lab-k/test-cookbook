# language: en

Feature: HTTP server
  In order to get a responce from HTTP server

Scenario: HTTP request
  When I send a request to localhost by HTTP
  Then I get a request status 200

require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../../spec_helper'
require 'net/http'

describe "Net::HTTPResponse#header" do
  it "returns self" do
    res = Net::HTTPUnknownResponse.new("1.0", "???", "test response")
    res.response.should equal(res)
  end
end
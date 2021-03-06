require "#{File.dirname File.join(__rhoGetCurrentDir(), __FILE__)}/../../../spec_helper"
require "#{File.dirname File.join(__rhoGetCurrentDir(), __FILE__)}/../fixtures/classes"

describe :unboundmethod_to_s, :shared => true do
  before :each do
    @from_module = UnboundMethodSpecs::Methods.instance_method(:from_mod)
    @from_method = UnboundMethodSpecs::Methods.new.method(:from_mod).unbind
  end

  it "returns a String" do
    @from_module.send(@method).class.should == String
    @from_method.send(@method).class.should == String
  end

  it "the String reflects that this is an UnboundMethod object" do
    @from_module.send(@method).should =~ /\bUnboundMethod\b/
    @from_method.send(@method).should =~ /\bUnboundMethod\b/
  end

  it "the String shows the method name, Module defined in and Module extracted from" do
    @from_module.send(@method).should =~ /\bfrom_mod\b/
    @from_module.send(@method).should =~ /\bUnboundMethodSpecs::Mod\b/
    @from_method.send(@method).should =~ /\bUnboundMethodSpecs::Methods\b/
  end
end

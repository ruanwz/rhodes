require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../fixtures/classes'

describe :io_tty, :shared => true do
  with_tty do
    # Yeah, this will probably break.
    it "returns true if this stream is a terminal device (TTY)" do
      File.open('/dev/tty') {|f| f.send @method }.should == true
    end
  end

  it "returns false if this stream is not a terminal device (TTY)" do
    File.open(File.join(__rhoGetCurrentDir(), __FILE__).gsub(/\.rb/,".iseq")) {|f| f.send @method }.should == false
  end

  it "raises IOError on closed stream" do
    lambda { IOSpecs.closed_file.send @method }.should raise_error(IOError)
  end
end

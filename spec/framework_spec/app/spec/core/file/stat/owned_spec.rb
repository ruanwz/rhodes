require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../spec_helper'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../shared/file/owned'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/fixtures/classes'

describe "File::Stat#owned?" do
  it_behaves_like :file_owned, :owned?, FileStat
end

describe "File::Stat#owned?" do
  it "needs to be reviewed for spec completeness"
end

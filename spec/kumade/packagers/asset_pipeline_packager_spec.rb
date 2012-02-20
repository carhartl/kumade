require "spec_helper"

describe Kumade::AssetPipelinePackager, :with_mock_outputter do
  subject { Kumade::AssetPipeline }

  it_should_behave_like "packager"

  it "has the correct asset path" do
    pending
    subject.assets_path.should == File.join("public", "assets")
  end

  it "knows how to package itself" do
    pending
    ::Jammit.stubs(:package!)
    subject.package
    ::Jammit.should have_received(:package!).once
  end

  context "when Jammit is defined" do
    pending
    before { Jammit }
    it     { should be_installed }
  end

  context "when Jammit is not defined" do
    pending
    before { Object.send(:remove_const, :Jammit) }
    it     { should_not be_installed }
  end

end

require 'partial_dependencies'

describe PartialDependencies::Graph do
  subject { described_class.new File.expand_path('../../', __FILE__) }
  it "is there" do
    subject.should_not be_nil
  end

  context '#scan_line' do
    def scan(line)
      subject.send(:scan_line, line) # don't make it public just for specs
    end
    it 'detects classic render :partial' do
      line = %Q~= render :partial => 'foo/bar', :object => bar~
      scan(line).should == 'foo/bar'
    end

    it 'detects 1.9 render partial:' do
      line = %Q~= render partial: 'foo/bar', object: bar~
      scan(line).should == 'foo/bar'
    end

    it 'detects lazy render (without partial option)' do
      line = %Q~= render 'foo/bar', bar: bar~
      scan(line).should == 'foo/bar'
    end

    it "ignores non-render lines" do
      scan("<p>no render here</p>").should be_nil
    end
  end
end

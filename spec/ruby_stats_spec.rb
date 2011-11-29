require 'spec_helper'

describe RubyStat do

  let(:code) do
    code = <<-CODE
    class Foo
      
      def foo
        bar
      end

      def bar
        this
        is
        a
        long
        method
        for sure
      end
    end
    CODE
  end

  subject { RubyStat.new(code) }

  it "should tell the number of lines" do
    subject.lines_count.should == 15
  end

  it "should tell the number of methods" do
    subject.methods_count.should == 2
  end

  it "should have methods objects"

end

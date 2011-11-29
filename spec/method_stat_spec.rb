require 'spec_helper'

describe MethodStat do

  let(:code) do
    code = <<-CODE
      def tricky(arg1, arg2, arg3)
        if some_conditon
          if whatever
            then yes
          end
        else
          do_operation_1
          do_operation_2
        end

        more here
      end
    CODE
  end

  let(:inline_method) { 'def foo; true; end' }

  describe "number of lines" do
    it "should tell the number of lines" do
      MethodStat.new(code).lines_count.should == 10
    end

    it "should report the correct number of lines for inline methods" do
      MethodStat.new(inline_method).lines_count.should == 1
    end
  end

  describe "number of arguments" do
    context "normal arguments" do
    end

    context "arguments without parentheses" do
    end

    context "no arguments" do
    end
  end

end

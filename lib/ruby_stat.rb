require 'ruby_stat/method_stat'

class RubyStat
  def initialize(code)
    @code = code
  end

  def lines_count
    @code.split("\n").length
  end

  def methods_count
    @code.scan(/def .+/).length
  end
end

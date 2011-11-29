class MethodStat
  def initialize(code)
    @code = code
  end

  def lines_count
    inline_method? ? 1 : total_lines - 2
  end

  private

  def total_lines
    @total_lines ||= @code.split("\n").length
  end

  def inline_method?
    total_lines == 1
  end
end

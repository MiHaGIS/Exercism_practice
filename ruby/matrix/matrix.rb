class Matrix

  def initialize(matrix_string)
    @matrix = numberfy(matrix_string)
  end

  def numberfy(mat)
    mat.split(/\n/)
    .map do |r|
      r.split(' ').map(&:to_i)
    end
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

end

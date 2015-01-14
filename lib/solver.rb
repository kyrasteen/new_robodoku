class Solver

  def solve(document)
    set_up_board(document)

  end

  def set_up_board(document)
    rows = document.split("\n")
    rows.map do |row|
      numbers = row.split('')
      numbers.map do |n|
        n.to_i
      end
    end
  end



end

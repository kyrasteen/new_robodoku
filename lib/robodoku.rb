require_relative 'solver'

document = ARGV[0]
doc = File.read(document)
solver = Solver.new(doc)
solution = solver.solve(doc)
puts solution

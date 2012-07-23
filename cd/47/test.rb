options = %w[1 2 3 4 5]
p options.delete_at(rand(options.length))
(1..4).map {options.delete_at(rand(options.length))}.join

require "csv"

income = 0.00
expense = 0.00
CSV.foreach("text_file.csv") do |row|
	if row[0] == ARGV[0]
		income=income+row[1].to_f
		expense=expense+row[2].to_f
	end
end
puts income
puts expense
puts income - expense

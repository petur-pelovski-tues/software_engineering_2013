require "csv"

income=0.00

mostincome = ""
CSV.foreach("bank.csv") do |row|
	if income<row[1].to_f
		income=row[1].to_f
		date=row[0]
	end
end
puts mostincome

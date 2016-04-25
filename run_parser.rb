require_relative 'parser'

parser = Parser.new(ARGV[0])
parser.read

p 'list of webpages with most page views ordered from most pages views to less page views'

parser.visits.sort_by {|url, visits| visits}.reverse.each do |visit|
   p "#{visit.first} #{visit.last} visits"
end

p 'list of webpages with most unique page views also ordered'

parser.unique_visits.sort_by {|url, visits| visits}.reverse.each do |unique_visit|
  p "#{unique_visit.first.split('-').first} #{unique_visit.last} unique visits"
end

Parser
=======

Simple parser that takes a log and count visits and unique visits to a website

#To run

irb run_parser.rb <path-to-logfile>

or

ruby run_parser.rb <path-to-logfile>

#To run tests

irb parser_test.rb

#Expected output

list of webpages with most page views ordered from most pages views to less page views

web/1 xxx visits
web/2 xxx visits
web/3 xxx visits

list of webpages with most unique page views also ordered

web/1 xxx unique visits
web/2 xxx unique visits
web/3 xxx unique visits




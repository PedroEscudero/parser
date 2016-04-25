require_relative "parser.rb"
∫require "minitest/autorun"

class TestParser < Minitest::Test

  def test_initialize
    parser = Parser.new("parser_folder/webserver.log")
    assert_equal("parser_folder/webserver.log", parser.path)
    assert_equal({}, parser.visits)
    assert_equal({}, parser.unique_visits)
  end

  def test_read
    parser = Parser.new("parser_folder/webserver.log")
    parser.read
    assert_equal({"/help_page/1-126.318.035.038"=>4, "/contact-184.123.665.067"=>9, "/home-184.123.665.067"=>1, "/about/2-444.701.448.104"=>5, "/help_page/1-929.398.951.889"=>4, "/index-444.701.448.104"=>7, "/help_page/1-722.247.931.582"=>4, "/about-061.945.150.735"=>5, "/help_page/1-646.865.545.408"=>5, "/home-235.313.352.950"=>6, "/help_page/1-543.910.244.929"=>4, "/home-316.433.849.805"=>5, "/contact-543.910.244.929"=>3, "/about-126.318.035.038"=>3, "/about/2-836.973.694.403"=>4, "/index-316.433.849.805"=>2, "/index-802.683.925.780"=>1, "/contact-555.576.836.194"=>4, "/about/2-184.123.665.067"=>10, "/home-444.701.448.104"=>7, "/index-929.398.951.889"=>5, "/about-235.313.352.950"=>4, "/contact-200.017.277.774"=>2, "/about-836.973.694.403"=>5, "/contact-316.433.849.805"=>7, "/about/2-382.335.626.855"=>5, "/home-336.284.013.698"=>2, "/about-929.398.951.889"=>1, "/help_page/1-836.973.694.403"=>3, "/contact-836.973.694.403"=>4, "/about/2-543.910.244.929"=>7, "/about-715.156.286.412"=>4, "/index-184.123.665.067"=>3, "/about-336.284.013.698"=>7, "/home-382.335.626.855"=>5, "/home-802.683.925.780"=>3, "/about/2-555.576.836.194"=>6, "/home-451.106.204.921"=>4, "/about-722.247.931.582"=>8, "/contact-158.577.775.616"=>10, "/about-897.280.786.156"=>4, "/home-897.280.786.156"=>2, "/home-715.156.286.412"=>2, "/help_page/1-316.433.849.805"=>4, "/home-836.973.694.403"=>4, "/help_page/1-184.123.665.067"=>2, "/home-555.576.836.194"=>4, "/help_page/1-158.577.775.616"=>6, "/index-158.577.775.616"=>7, "/about/2-802.683.925.780"=>1, "/about/2-200.017.277.774"=>9, "/about-016.464.657.359"=>5, "/about-802.683.925.780"=>3, "/about-543.910.244.929"=>6, "/contact-016.464.657.359"=>2, "/help_page/1-682.704.613.213"=>4, "/about/2-126.318.035.038"=>1, "/about/2-451.106.204.921"=>1, "/contact-682.704.613.213"=>3, "/help_page/1-217.511.476.080"=>2, "/about/2-235.313.352.950"=>3, "/index-897.280.786.156"=>6, "/index-555.576.836.194"=>1, "/home-646.865.545.408"=>3, "/home-217.511.476.080"=>2, "/about-316.433.849.805"=>2, "/index-200.017.277.774"=>5, "/about/2-217.511.476.080"=>3, "/contact-444.701.448.104"=>1, "/index-722.247.931.582"=>4, "/help_page/1-016.464.657.359"=>4, "/help_page/1-451.106.204.921"=>6, "/index-451.106.204.921"=>9, "/about-451.106.204.921"=>6, "/about/2-316.433.849.805"=>5, "/about-555.576.836.194"=>1, "/contact-802.683.925.780"=>4, "/about/2-061.945.150.735"=>6, "/home-682.704.613.213"=>3, "/about/2-715.156.286.412"=>3, "/help_page/1-897.280.786.156"=>2, "/about-158.577.775.616"=>2, "/help_page/1-382.335.626.855"=>6, "/contact-382.335.626.855"=>7, "/help_page/1-235.313.352.950"=>3, "/about-682.704.613.213"=>6, "/home-200.017.277.774"=>4, "/about/2-646.865.545.408"=>5, "/index-217.511.476.080"=>2, "/contact-722.247.931.582"=>8, "/about/2-016.464.657.359"=>5, "/help_page/1-444.701.448.104"=>1, "/index-836.973.694.403"=>5, "/contact-126.318.035.038"=>3, "/contact-336.284.013.698"=>3, "/home-061.945.150.735"=>2, "/contact-451.106.204.921"=>3, "/home-543.910.244.929"=>4, "/home-722.247.931.582"=>4, "/home-016.464.657.359"=>3, "/index-382.335.626.855"=>3, "/about-382.335.626.855"=>1, "/about/2-897.280.786.156"=>3, "/about/2-682.704.613.213"=>2, "/index-543.910.244.929"=>3, "/home-158.577.775.616"=>4, "/index-126.318.035.038"=>4, "/contact-897.280.786.156"=>2, "/about/2-722.247.931.582"=>3, "/home-929.398.951.889"=>1, "/help_page/1-802.683.925.780"=>5, "/about/2-158.577.775.616"=>2, "/contact-217.511.476.080"=>3, "/index-682.704.613.213"=>2, "/contact-061.945.150.735"=>2, "/contact-646.865.545.408"=>3, "/help_page/1-336.284.013.698"=>5, "/help_page/1-715.156.286.412"=>2, "/index-016.464.657.359"=>3, "/about-217.511.476.080"=>2, "/help_page/1-555.576.836.194"=>2, "/about-184.123.665.067"=>4, "/contact-235.313.352.950"=>2, "/about-646.865.545.408"=>2, "/index-235.313.352.950"=>1, "/index-061.945.150.735"=>3, "/index-336.284.013.698"=>3, "/contact-715.156.286.412"=>3, "/index-646.865.545.408"=>1, "/contact-929.398.951.889"=>1, "/home-126.318.035.038"=>3, "/about/2-336.284.013.698"=>1, "/help_page/1-061.945.150.735"=>1, "/index-715.156.286.412"=>2, "/help_page/1-200.017.277.774"=>1}, parser.unique_visits)
    assert_equal({"/help_page/1"=>80, "/contact"=>89, "/home"=>78, "/about/2"=>90, "/index"=>82, "/about"=>81}, parser.visits)
  end

end
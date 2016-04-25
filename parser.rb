class Parser

  attr_reader :visits, :unique_visits, :path

  def initialize(path)
    @path = path
    @unique_visits =  {}
    @visits = {}
  end

  def read
    File.read(@path).each_line do |line|
      treat_line(line)
    end
  end

  private

  def treat_line(line)
    url, ip = line.split
    @visits[url] =  @visits.key?(url) ? @visits[url] + 1 : 1 
    @unique_visits["#{url}-#{ip}"] =  @unique_visits.key?("#{url}-#{ip}") ? @unique_visits["#{url}-#{ip}"] + 1 : 1
  end

end
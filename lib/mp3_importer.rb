class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir.glo('.').each {|file| puts file }
  end 
end 

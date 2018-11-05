class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3")
    #binding.pry
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end 
  end
end
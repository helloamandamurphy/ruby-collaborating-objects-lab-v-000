class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").gsub(//)
    #binding.pry
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
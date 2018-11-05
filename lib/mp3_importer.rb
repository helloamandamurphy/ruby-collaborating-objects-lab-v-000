class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect do |file|
      #binding.pry
      file.gsub("#{@path}/","")
    end
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
class MP3Importer
  attr_accessor :path, :filenames
  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3")
    binding.pry
  end

  def import(filenames)
    filenames.each do |filename|
      Song.new_by_filename(filename)
    end 
  end
end
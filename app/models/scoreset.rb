class Scoreset < ActiveRecord::Base
  def self.save(upload)
    name = upload['scoreset'].original_filename
    directory = 'public/data'
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(upload['scoreset'].read) }
  end
end

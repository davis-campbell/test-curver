class StaticPagesController < ApplicationController

  def home
    @scores = Scoreset.new
  end

  def upload_file
    post = Scoreset.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end

end

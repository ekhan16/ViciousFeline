class FileController < ApplicationController

  def show
    @number_of_files = file_count('public/storyline')
    respond_to do |format|
      format.html
      format.json {render :json => @number_of_files}
    end
  end

  def file_count(file_path)
    Dir[File.join(file_path, '**', '*')].count { |file| File.file?(file) }
  end

end

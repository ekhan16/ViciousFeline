class FileController < ApplicationController

  def show
    base_uri = "https://viciousunicorn.firebaseio.com/"
    firebase = Firebase::Client.new(base_uri)
    @firebase_test = firebase.get(base_uri).body
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

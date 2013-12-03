require 'sinatra'

get '/' do
  erb :file_drop
end

post '/file_upload' do
  File.open('uploads/' + params['file'][:filename], "w") do |f|
    f.write(params['file'][:tempfile].read)
  end
  return "The file was successfully uploaded!"
end
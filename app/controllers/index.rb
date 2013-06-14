get '/' do
  @albums = Album.all
  @users = User.all
  @photos = Photo.all
  erb :index
end

get '/photo_upload' do
  erb :photo_upload
end

post '/photo_upload' do

  photo = Photo.new
  photo.file = params[:photo]
  photo.save

  redirect to '/'


end

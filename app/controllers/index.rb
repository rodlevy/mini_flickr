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
  photo.album = Album.find_or_create_by_name(params[:album])
  photo.name=params[:photo_name]
  photo.user = User.find(current_user.id)
  photo.save

  redirect to '/'

end

get '/album/:album_id' do
	@photos = Photo.find_all_by_album_id(params[:album_id])
	erb :album_photos
end


get '/user/:user_id/albums' do
  	@photos = Photo.find_all_by_user_id(params[:user_id])

	erb :album_photos
end
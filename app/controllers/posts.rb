#CRUD -> Create, Read, Update, Delete
get '/posts/new' do
  @categories = Category.all
  erb :'posts/new'
end

post '/posts' do
  post = Post.create(params[:post])
  redirect "/posts/#{post.id}"
end

get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  @categories = Category.all
  erb :'posts/edit'
end

post '/posts/:id' do
  @post = Post.find(params[:id])

  if @post.update(params[:post])
    redirect "/posts/#{@post.id}"
  else
    @categories = Category.all
    erb :'posts/edit'
  end
end

delete '/posts/:id' do
  Post.find(params[:id]).destroy
  redirect '/posts'
end

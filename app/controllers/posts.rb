#CRUD -> Create, Read, Update, Delete
get '/posts/new' do
  erb :'posts/new'
end

post '/posts' do
  post = Post.create(params[:post])
  redirect "/posts/#{post.id}"
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

$apps      = $mongo.collection('apps')
$templates = $mongo.collection('app_templates')

get '/apps' do 
	erb :'/apps/my_apps', default_layout
end

get '/apps/:id' do 
	erb :'/editor/single_app_ide'
end

post '/app' do 
	data           = pr
	data[:user_id] = cuid
	$apps.add(data)
	redirect back
end

post '/apps/:id/upload_dir' do
	bp
	{x:1}
end

# get '/apps/new' do 
# 	erb :'/apps/main', default_layout
# end	

# get '/apps/create' do 
# 	require_user 
# 	require_fields('template_id')
# end
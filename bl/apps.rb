$apps      = $mongo.collection('apps')
$templates = $mongo.collection('app_templates')

get '/apps' do 
	erb :'/apps/my_apps', default_layout
end

get '/apps/new' do 
	erb :'/apps/main', default_layout
end	


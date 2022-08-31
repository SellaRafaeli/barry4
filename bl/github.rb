=begin
Tasks (all code in this file)

0. Github App
1. Implement "Login with Github", with permissions to modify repos, after login store Github token to user doc in $users collection.
2. Implement "Create repo" (based on source to copy), add webhook to trigger deployment on each change to 'master'

# https://docs.github.com/en/rest/webhooks/repo-config 

=end

get '/github' do 
	erb :'/github/github', default_layout
end

# 1 
get '/github_login' do 
	# TBD
	github_user       = GithubGem.login({}) # Implement
	user              = $users.add(github_user) #save user in our DB, get user_id
	session[:user_id] = user[:_id] # this sets the current user, logging them in
	redirect '/github'
end

# 2
get '/github_create_repo' do 
	src_repo      = pr[:src_repo] 
	user_id       = cu[:_id]
	
	# TBD
	repo          = GithubGem.create_repo({})
	webhook       = GithubGem.create_webhook({repo_id: create_repo_response[:repo_id], target_url: 'ourapp.com/foo'})

	flash.message = "Repo and Webhook created. URL: #{repo[:url]}"
	redirect '/github'
end

get '/venues/new' do 
	erb :'venues/new'
end 

post 'venues' do 
	@venue = Venue.new(params[:venue])
	if @venue.save
		redirect "/venues/#{@venue.id}"
	else
		@errors = @venue.errors.full_messages
	end
end

# need to add more routes so a user can be linked to a venue
# venue sign up form and login form

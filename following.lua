function init_following()
	lead_who = false
	follow_who = false
	leading_helper = false
	follow_helper = false

	echo( "\n-----------------\n" )
	echo( "Enabling the Follow Helper.\n" )
	echo( "USAGE:\n" )
	echo( "  #follow - puts you in follow mode\n" )
	echo( "  #lead   - puts you in lead mode\n" )
	echo( "-----------------\n\n" )
end

function following_response()
	if true == follow_helper then
		say = matches[2]

		if "altar" == say then
			send( "place claws on altar" )
			send( "place hands on altar" )
			send( "place paws on altar" )
			send( "say death" )
		elseif "birdie" == say then send( "ride birdie" )
		elseif "book" == say then send( "read book" )
		elseif "cave" == say then send( "cave" )
		elseif "deny humanity" == say then
			send( "say deny humanity" )
			tempTimer( 2, [[
				send( "stand" )
			]])
		elseif "elevator" == say then send( "elevator" )
		elseif "enter gate" == say then send( "enter gate" )
		elseif "enter mirror" == say then send( "enter mirror" )
		elseif "enter portal" == say then send( "enter portal" )
		elseif "enter solace" == say then send( "enter solace" )
		elseif "daisy" == say then
			send( "pinch daisy" )
		elseif "door" == say then send( "open door" )
		elseif "gate" == say then send( "enter gate" )
		elseif "grab m" == say then send( "grab m" )
		elseif "leave" == say then send( "leave" )
		elseif "leave solace" == say then send( "leave solace" )
		elseif "[automated] lick staff and give back please" == say then
			send( "lick staff" )
			send( "give crystallized lysergic staff to " .. follow_who )
		elseif "mirror" == say then send( "enter mirror" )
		elseif "move sheets" == say then
			send( "move sheets" )
			send( "lay on bed" )
		elseif "orb" == say then send( "use orb" )
		elseif "pay guard" == say then
			send( "pay guard" )
		elseif "portal" == say then send( "enter portal" )
		elseif "push 1" == say then send( "push 13.1" )
		elseif "push 2" == say then send( "push 13.2" )
		elseif "push 3" == say then send( "push 13.3" )
		elseif "push 4" == say then send( "push 13.4" )
		elseif "push 5" == say then send( "push 13.5" )
		elseif "push 6" == say then send( "push 13.6" )
		elseif "push 7" == say then send( "push 13.7" )
		elseif "push 8" == say then send( "push 13.8" )
		elseif "push 9" == say then send( "push 13.9" )
		elseif "read book" == say then send( "read book" )
		elseif "rest" == say then send( "rest" )
		elseif "sams" == say then
			expandAlias( "#go heart" )
			expandAlias( "#go spiced" )
		elseif "scarecrow" == say then send( "touch scarecrow" )
		elseif "solace" == say then send( "enter solace" )
		elseif "stand" == say then send( "stand" )
		elseif "tv" == say then send( "watch tv" )
		elseif "use orb" == say then send( "use orb" )
		elseif "watch tv" == say then send( "watch tv" )
		elseif "wish on star" == say then send( "wish on star" )
		elseif "xp" == say then send( "gs " .. format_int( xp ) )
		elseif "zarinia" == say then
			expandAlias( "#go heart" )
			expandAlias( "#go zarinia" )
		end
	end
end

init_following()

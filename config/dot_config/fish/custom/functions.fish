function chrome
	open -a "Google Chrome" $argv
end

function docker-ssh
	docker exec -it $argv[1] /bin/sh
end

function fish-time
    fish --profile /tmp/profile -c fish_prompt; cat /tmp/profile
end

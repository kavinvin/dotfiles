function chrome
	open -a "Google Chrome" $argv[0]
end

function docker-ssh
	docker exec -it $argv[1] /bin/sh
end

function mc
	mkdir -p $argv[1]; cd $argv[1]
end

function sudo
	if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

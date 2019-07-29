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

function pandoc-preview-md
	mkdir -p /tmp/pandoc
    set filename $argv[1]
    set temp_preview
    pandoc -f markdown -t html < $filename > /tmp/pandoc/$filename.html
    safari /tmp/pandoc/$filename.html
end

function th
    sdcv $argv[1] -u 'English-Thai Lexitron Dictionary 2.0' -c | less -r
end
function en
    sdcv $argv[1] -u 'dictd_www.dict.org_gcide' -c | less -r
end
function je
    sdcv $argv[1] -u 'jmdict-ja-en' -c
end
function ej
    sdcv $argv[1] -u 'jmdict-en-ja' -c
end

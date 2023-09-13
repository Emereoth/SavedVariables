#!/bin/zsh

DONE=0

while [ $# -gt 0 ] ; do
	case $1 in
		--contract | -c)	CONTRACT_ID=$2
							DONE=1
							shift ;;
	esac
	shift
done

if [[ "$DONE" == 0 ]]; then
	printf "Error with args:\n\contract id: %s\n" "$CONTRACT_ID"
	exit 1
fi

curl -d \"\" --request POST --url "https://api.spacetraders.io/v2/my/contracts/$CONTRACT_ID/accept" --header 'Authorization: Bearer '`get_token`

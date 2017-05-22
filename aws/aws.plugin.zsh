export AWS_DEFAULT_PROFILE=npc

function ec2-hosts {
aws ec2 $@  describe-instances | jq --raw-output '.Reservations[].Instances[].Tags | map(select(.Key == "Name")) | .[] | .Value'
}

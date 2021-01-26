# Sync repository foo using remote bar
pulp ansible repository sync --name "foo" --remote "bar"

# Use the -b option to have the sync task complete in the background
# e.g. pulp -b ansible repository sync --name "foo" --remote "bar"

# After the task is complete, it gives us a new repository version
# Inspecting new repository version
pulp ansible repository version --repository "foo" show --version 1

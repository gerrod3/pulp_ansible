# Distributions are created asynchronously. Create one, and specify the repository version that will
# be served at the base path specified.
pulp ansible distribution create --name "baz" --base-path "my_content" --repository "foo" --version 1

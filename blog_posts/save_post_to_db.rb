require File.expand_path('../../config/environment', __FILE__)


file_name = ARGV[0]
post_name = ARGV[1]

file = File.open(file_name, "rb")
contents = file.read

post = Post.new

post.title = post_name
post.body = contents

post.save


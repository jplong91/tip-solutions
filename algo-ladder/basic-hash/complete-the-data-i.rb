### Question
#
# Given an array of social media posts and a hash of users,
# return a list of posts (as an array of hashes) that replaces
# the submitted_by id number as the person's actual name.
#
# Input -> array (of hashes)
# Output -> array (of hashes)
#
# Key: {
#   403 => "Aunty Em",
#   231 => "Joelle P.",
#   989 => "Lyndon Johnson",
#   111 => "Patti Q."
# }
#
# Input: [
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]
# Output: [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]
#

### Pseudocode
#
# create a method -> complete_the_data, accepts a "posts" input array
# create an variable for the key-map called "users"
# create an empty array for the output called "adjusted_posts"
#
# `each` loop since we need to modify every element in 'posts'
# every iteration of the loop we have access to a hash -> "post"
# create a new variable within the loop, set to an empty hash
# add each 'post' key/value pair to the empty hash, except
# substitute the post[:submitted_by] value with the matching 'users' key-map value
#
# return 'adjusted_posts'
#

def complete_the_data(posts)
  users = {
    403 => "Aunty Em",
    231 => "Joelle P.",
    989 => "Lyndon Johnson",
    111 => "Patti Q."
  }
  adjusted_posts = []

  posts.each do |post|
    adjusted_post = {}
    adjusted_post[:title] = post[:title]
    adjusted_post[:submitted_by] = users[post[:submitted_by]]
    adjusted_post[:likes] = post[:likes]

    adjusted_posts << adjusted_post
  end

  return adjusted_posts
end

input_posts = [
  {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
  {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
  {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
]

p complete_the_data(input_posts) #=> see expected output above

### Final Form
#
# Typically you would store a key-value 'map' as a constant of sorts.
# Also highlighting 'pp' instead of 'p' when printing output.
# I believe 'pp' stands for 'pretty-print' and better formats
#  things like arrays and hashes, which otherwise turn to word soup.
#

USERS_KEY = {
  403 => "Aunty Em",
  231 => "Joelle P.",
  989 => "Lyndon Johnson",
  111 => "Patti Q."
}

def complete_the_data_ii(posts)
  posts.map do |post|
    post[:submitted_by] = USERS_KEY[post[:submitted_by]]
    post
  end
end

input_posts = [
  {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
  {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
  {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
]

pp complete_the_data_ii(input_posts)  #=> see expected output above

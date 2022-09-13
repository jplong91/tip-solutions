### Question
#
# Given an array of social media posts and an array of users,
# return a list of posts (as an array of hashes) that replaces the
# submitted_by id number as the person's actual name.
#
# Input -> array, array
# Output -> array
#
# Input: [
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ],
# [
#   {user_id: 403, name: "Aunty Em"},
#   {user_id: 231, name: "Joelle P."},
#   {user_id: 989, name: "Lyndon Johnson"},
#   {user_id: 111, name: "Patti Q."},
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
# create a method -> post_mash, accepts two input array parameters (posts, users)
# create an output array variable called "authored_posts"
#
# rather than using a nested loop to check the users array, let's just make that a hash
# the keys will be the `user_id` and the values will be the `name`, called "user_map"
#
# using the newly created hash, we'll add new 'authored_post' hash values to the output array
# `each` loop over posts to accomplish this, adding in each value from the original hash
# but substitute 'submitted_by' for the name from our "user_map"
#
# return 'authored_posts'
#

def post_mash(posts, users)
  authored_posts = []
  user_map = {}

  users.each do |user|
    user_map[user[:user_id]] = user[:name]
  end

  posts.each do |post|
    updated_post = {}
    updated_post[:title] = post[:title]
    updated_post[:submitted_by] = user_map[post[:submitted_by]]
    updated_post[:likes] = post[:likes]
    authored_posts << updated_post
  end

  return authored_posts
end

posts = [
  {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
  {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
  {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
]

users = [
  {user_id: 403, name: "Aunty Em"},
  {user_id: 231, name: "Joelle P."},
  {user_id: 989, name: "Lyndon Johnson"},
  {user_id: 111, name: "Patti Q."},
]

pp post_mash(posts, users) #=> see expected output above

### Final Form
#
# I think we still need/want to convert the users array of hashes into a single hash.
# Not seeing any other way we prevent a nested loop having to search through the
#  users array. Creating a hash lets us run through 'users' once - O(n)
# Then because we're checking for a hash key, the second array loop is also - O(n)
#

def post_mash_ii(posts, users)
  user_map = users.each_with_object({}) do |user, map|
    map[user[:user_id]] = user[:name]
  end

  posts.map do |post|
    {
      title: post[:title],
      submitted_by: user_map[post[:submitted_by]],
      likes: post[:likes]
    }
  end
end

pp post_mash_ii(posts, users) #=> see expected output above

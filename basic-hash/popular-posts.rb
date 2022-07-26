### Question
#
# Given an array of hashes that represent a list of social media posts,
# return a new array that only contains the posts that have at least 1000 likes.
#
# Input -> array (of hashes)
# Output -> array (of hashes)
#
# Input:  [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]
# Output: [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]
#

### Pseudocode
#
# create a method -> only_popular_posts, accepts a "posts" input array
# create an empty array variable called "popular_posts"
#
# `each` loop since we need to look at every hash in the array
# keep in mind that each iteration of the loop, we're dealing with a hash
#  -> check `post[:likes]` >= 1000, if yes, add that whole post to the 'popular_posts' output
#
# return 'popular_posts'
#

def only_popular_posts(posts)
  popular_posts = []

  posts.each do |post|
    if post[:likes] >= 1000
      popular_posts << post
    end
  end

  popular_posts
end

p only_popular_posts([
  {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
  {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
  {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
])
#=> [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

### Final Form
#

def only_popular_posts_ii(posts)
  posts.select do |post|
    post[:likes] >= 1000
  end
end

p only_popular_posts_ii([
  {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
  {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
  {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
])
#=> [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

module UsersHelper
  def user_display(index)
    user = User.find_by(uid: @longest_array[index].to_s)
    [
      "<img class='twitter-avatar' src='#{user.avatar}' />",
      "<a class='aside-text' href='/?neoid=#{user.neo_id}'>",
      "<span class='ident'>#{user.name} @#{user.username}</span>",
      "</a>",
      "<img class='twitter-icon' src='http://platform.twitter.com/images/bird.png' />",
      "</h4><div class='bio'>#{user.bio}</div>"
    ].join.html_safe
  end
end

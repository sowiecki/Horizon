module UsersHelper
  def user_display(index)
    user = User.find_by(uid: @longest_array[index].to_s)
    "<h4><a class='aside-text' href='/?neoid=#{user.neo_id}'><img class='twitter-avatar' src='#{user.avatar}' />#{user.name} @#{user.username}</a></h4><p>#{user.bio}</p>".html_safe
  end
end

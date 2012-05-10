module ApplicationHelper
  def profile_pic_url(facebook_id)
    open("https://graph.facebook.com/#{facebook_id}/picture?access_token=#{access_token}").base_uri
  end
end

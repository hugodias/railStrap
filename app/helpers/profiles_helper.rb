module ProfilesHelper
  def render_profile_for(user, size, html_class = 'card-img-top img-fluid')
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    image_tag url, class: "#{html_class}"
  end
end

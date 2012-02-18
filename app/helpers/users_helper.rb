module UsersHelper
  
  # def gravatar_for(user)
  #     gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  #     gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
  #     image_tag(gravatar_url, alt: user.name, class: "gravatar")
  #   end
  
  def gravatar_for(user, options = {:size => 50})
      options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
      id = Digest::MD5::hexdigest(user.email.downcase)
      url = 'http://www.gravatar.com/avatar/' + id + '.png?s=' + options[:size].to_s
      options.delete :size
      image_tag url, options
  end
end

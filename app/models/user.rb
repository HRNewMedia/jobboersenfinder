class User < ActiveRecord::Base

  default_scope order: 'users.username ASC'


  def role_symbols
    if is_admin
      [:admin]
    else
      [:author]
    end
  end
end

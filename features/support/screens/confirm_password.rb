require_rel 'create_database'

class ConfirmPassword < CreateDatabase
  def confirm(password)
    enter_password(password)
    ok
  end
end
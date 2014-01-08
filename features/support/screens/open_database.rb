class OpenDatabase
  include Mohawk
  window(title: /Open Database/)

  text(:password, id: '1008')
  button(:ok, value: 'OK')

  def verify(password)
    self.enter_password(password)
    ok
  end
end
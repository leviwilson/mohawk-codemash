class CreateDatabase
  include Mohawk
  window(title: /Create New Password Database/)

  text(:password, id: '1008')
  button(:ok, value: 'OK')
end

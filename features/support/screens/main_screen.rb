class MainScreen
  include Mohawk
  window(title: /KeePass/)

  button(:create_new, id: '1097')
  button(:save, id: '1089')
  button(:close, id: 'Close')

  def title
    adapter.window.title
  end
end
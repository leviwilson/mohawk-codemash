class SaveDialog
  include Mohawk
  window(title: 'Save As')

  text(:file_name, id: '1001')
  button(:save, value: 'Save')

  def save_as(file)
    self.file_name = file
    self.save
  end
end
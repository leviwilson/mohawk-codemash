class KeePassSettings
  def self.write(settings)
    File.open('./app/KeePass.ini', 'w') do |f|
      f.write "[KeePass]\n"
      settings.each { |setting| add_setting f, setting }
    end
  end

  def self.add(settings)
    File.open('./app/KeePass.ini', 'a+') do |f|
      settings.each { |setting| add_setting f, setting }
    end
  end

  def self.add_setting(file, setting)
    file.write "#{setting[0].camelize}=#{setting[1].to_s.capitalize}\n"
  end

  private_class_method :add_setting
end
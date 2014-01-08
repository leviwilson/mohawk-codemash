class KeePass
  def self.last_database=(database)
    File.open('./app/KeePass.ini', 'w') do |f|
      f.write "[KeePass]\nKeeLastDb=#{database}.kdb"
    end
  end

  def self.clean_locks
    Dir.glob('./app/*.lock').each &File.method(:delete)
  end
end
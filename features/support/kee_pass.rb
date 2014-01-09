class KeePass
  def self.last_database=(database)
    KeePassSettings.add kee_last_db: "#{database}.kdb"
  end

  def self.clean_locks
    Dir.glob('./app/*.lock').each &File.method(:delete)
  end
end
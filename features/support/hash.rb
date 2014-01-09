class Symbol
  def camelize
    self.parts.reduce('') do |camelized, part|
      camelized << part.capitalize
    end
  end

  def parts
    self.to_s.split('_')
  end
end
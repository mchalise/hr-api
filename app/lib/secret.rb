class Secret
  def self.not_found(record = 'record')
    "Sorry, #{record} not found."
  end

  def self.admin_key
    '!@#$%^'
  end
end

if Rails.env.development? || Rails.env.test?
  begin
    mail = "#{Rails.root}/config/mail.yml"
    YAML.load_file(mail).each do |key, value|
      ENV[key] = value
    end
  rescue
    raise "No mail.yml config file in config directory"
  end
end

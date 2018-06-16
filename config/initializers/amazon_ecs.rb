Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = '[your access key]'
  options[:AWS_secret_key] = '[you secret key]'
  options[:associate_tag] = '[your associate tag]'
end

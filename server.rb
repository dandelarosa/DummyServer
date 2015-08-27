require 'sinatra'

post '/' do
  body = request.body.read
  if ENV['PRINT_REQUEST_BODY'].eql? 'YES'
    puts body
  end
  if ENV['SAVE_REQUEST_BODY'].eql? 'YES'
    File.open('body', 'w+') do |file|
      file.write(body)
    end
  end
  'OK'
end

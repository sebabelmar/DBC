require 'socket'

server = TCPServer.new 2000

loop do
  # Server accepting comunication from client
  client = server.accept
  resp = ''

  # Client IO gets on flick
  # Important to use chomp here because the string
  # comes with /n "line break"
  input = client.gets.chomp
  case input
    when "home"
      resp = "Welcome home!"
    when "profile"
      resp = "Hey this is Seba."
    else
      resp = "You are out!"
  end

  client.puts resp
  puts "In the server... responding to '#{input}'"

  client.close
end

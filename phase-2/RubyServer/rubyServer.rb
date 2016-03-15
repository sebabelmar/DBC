require 'socket'

server = TCPServer.new 2000

loop do
  client = server.accept
  client.puts "this is #{client.gets}"

  puts "In the server..."
  client.puts "YEAH!!"

  client.close
end

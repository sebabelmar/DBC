require 'socket'

server = TCPServer.new 2000

loop do
  client = server.accept

  puts "In the server..."
  client.puts "YEAH!!"
  puts "No way jose"
  client.puts "more"
  client.close

end

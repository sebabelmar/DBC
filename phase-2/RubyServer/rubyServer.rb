require 'socket'
require 'json'

server = TCPServer.new 2000

loop do
  # Server accepting comunication from client
  client = server.accept
  resp = ''

  # Client IO gets on flick
  # Important to use chomp here because the string
  # comes with /n "new line"
  # input = client.gets.chomp
  # case input
  #   when "home"
  #     resp = "Welcome home!"
  #   when "profile"
  #     resp = "Hey this is Seba."
  #   else
  #     resp = "You are out!"
  # end

  File.open('myHtml.html', "rb") do |file|
    client.print "HTTP/1.1 200 OK\r\n" +
    "Server : Seba's Server 1.0\r\n" +
    "Content-Type: text/html\r\n" +
    "Content-Length: #{file.size}\r\n" +
    "Connection: close\r\n"

    client.print "\r\n"

    # write the contents of the file to the socket
    IO.copy_stream(file, client)
  end

  client.puts resp
  # puts "In the server... responding to '#{input}'"

  client.close
end

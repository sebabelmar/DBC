require 'socket'
require 'uri'

# Files are gonna be serve from this directory.
ROOT = "./files"

# Maps extensions to their content type
CONTENT_TYPE_MAP = {
  'html' => 'text/html',
  'txt' => 'text/plain',
  'png' => 'image/png',
  'jpg' => 'image/jpeg',
  'json' => 'application/json'
}

# If content type is not found will default to this
DEFAULT_CONTENT_TYPE = "application/octet-stream"

# ### HELPERS ###
# Extracts extension and returns content type
def content_type (path)
  extension = File.extname(path).split(".").last
  CONTENT_TYPE_MAP[extension] || DEFAULT_CONTENT_TYPE
end

# Parses request line and generates path to a file in server
def request_file(requested_line)
  requested_uri = requested_line.split(" ")[1]
  path = URI.unescape(URI(requested_uri).path)

  puts "requested_uri %% #{requested_uri}"
  puts "path %% #{path}"

  this_is_the_full_path = File.join(ROOT, path)
  puts "path to return %% #{this_is_the_full_path}"

  this_is_the_full_path
end

# ########## SERVER #############

server = TCPServer.new 2000

loop do
  # Server accepting communication from client
  client = server.accept

  request_line = client.gets
  STDERR.puts request_line

  path_to_file = request_file(request_line)
  puts path_to_file

  if File.exist?(path_to_file) && !File.directory?(path_to_file)
    File.open(path_to_file, "rb") do |file|
      client.print "HTTP/1.1 200 OK\r\n" +
      "Server : Seba's Server 1.0\r\n" +
      "Content-Type: #{content_type(file)}\r\n" +
      "Content-Length: #{file.size}\r\n" +
      "Connection: close\r\n"

      client.print "\r\n"

      # write the contents of the file to the socket
      IO.copy_stream(file, client)
    end
  else
    message = "File not found in this system\n"

    client.print "HTTP/1.1 404 Not Found\r\n" +
    "Server : Seba's Server 1.0\r\n" +
    "Content-Type: text/plain\r\n" +
    "Content-Length: #{message.size}\r\n" +
    "Connection: close\r\n"

    client.print "\r\n"

    client.print message
  end

  client.close
end

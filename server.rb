require 'socket'

puts "Starting the server .........."

server = TCPServer.open(8000)

loop{
    client_connection = server.accept
    client_connection.puts(Time.now)
    client_connection.puts("closing the connection")
    client_connection.close
}
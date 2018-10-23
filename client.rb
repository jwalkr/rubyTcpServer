require 'socket'

socket = TCPSocket.open("localhost" , 8000)

puts "starting the client ........."

while message = socket.gets
    puts message.chomp
end

puts "closing the client"

socket.close

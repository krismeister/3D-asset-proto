require 'webrick'
  include WEBrick
  s = HTTPServer.new(
   :Port => 4000,
   :DocumentRoot => Dir::pwd
  )
  trap("INT"){ s.shutdown }
  s.start
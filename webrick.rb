require 'webrick'
  include WEBrick
  s = HTTPServer.new(
   :Port => 4000,
   :DocumentRoot => Dir::pwd + '/proto'
  )
  trap("INT"){ s.shutdown }
  s.start
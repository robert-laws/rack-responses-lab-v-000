require 'date'

class Application

  @@items = ["Hat", "Bat", "Mat"]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items.each do |item|
      resp.write "#{item}\n"
    end

    resp.finish
  end
end

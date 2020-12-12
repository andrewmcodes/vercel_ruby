require "cowsay"

Handler = proc { |req, res|
  res.status = 200
  res["Content-Type"] = "text/text; charset=utf-8"
  if req.query.has_key?("name")
    name = req.query["name"]
    res.body = Cowsay.say "Hello, #{name}!", "cow"
  else
    res.body = Cowsay.say "Hello, stranger!\nShare your name with me as a param! (/api?name=Carrie)", "cow"
  end
}

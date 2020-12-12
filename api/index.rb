require "cowsay"

Handler = proc { |req, res|
  name = req.query["name"] || "Remote Ruby"

  res.status = 200
  res["Content-Type"] = "text/text; charset=utf-8"
  res.body = RubyFiglet::Figlet.new(name).show
}

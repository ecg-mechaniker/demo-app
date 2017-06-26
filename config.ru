require 'json'
run lambda { |env| [200, {"Content-Type" => "application/json"}, [JSON.pretty_generate({"env" => env, "ENV" => ENV.to_h})]] }

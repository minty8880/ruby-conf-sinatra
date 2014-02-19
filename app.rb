require "sinatra"
require "sinatra/reloader"

$coffees = []
def template
  """
  <html>
  <body>
  <form action='/' method='post'>
  What: <input name='what'>
  Cost: <input name='cost'>
  <button type='submit'>add coffee</button>
  </form>

  #{$coffees.inspect}

  </body>
  </html>
  """
end

get "/" do
  template
end

post '/' do
  $coffees << params
  template
end

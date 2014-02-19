require "sinatra"
require "sinatra/reloader"

$coffees = []
def template
  """
  <html>
  <body>
  <form action='/' method='get'>
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
  $coffees << params
  template
end
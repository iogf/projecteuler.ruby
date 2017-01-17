

$data = File.read('triangle.txt')
puts $data

def calc_routes line, col, value, arr, routes
  rsl = value + arr[line][col] 

  if line == arr.length - 1 
  routes.push(rsl)
  else
  calc_routes line + 1, col, rsl, arr, routes
  calc_routes line + 1, col + 1, rsl, arr, routes
  end
end

$data.strip!
$arr = $data.split "\n"
$arr.map! { |item|
item.split(' ').map! &:to_i}

routes = []
calc_routes 0, 0, 0, $arr, routes
puts routes.max






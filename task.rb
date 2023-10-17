# Бережний Дмитро КС31
def is_valid_ipv4(ip_str)
  ip_str += '.'
  regex = /^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.){4}$/
  ip_str =~ regex ? true : false
end

def beautiful_result(ip)
  puts "Is IP #{ip.ljust(15)} valid -> #{is_valid_ipv4(ip)}"
end


unless ARGV.empty?
  if ARGV.length == 1
    str = ARGV[0].to_s.strip
    beautiful_result(str)
  else
    puts "Not correct value was passed"
  end
  return
end

puts "Since no value is specified in ARGV, here is the default operation of the program."
puts
beautiful_result("192.168.1.1")
beautiful_result("0.0.0.0")
beautiful_result("255.255.255.255")
puts
beautiful_result("-5.0.144.1")
beautiful_result("256.0.0.1")


# Implement your procedural solution here!
def smallest_multiple(input)
  input_array = Array.new(input,1)
  n = 1
  while n < input
    input_array[n] = input_array[n-1] + 1
    n += 1
  end
  prime_array = input_array - non_prime?(input_array)
  # largest_power?(prime_array, input)
  largest_power?(prime_array, input).inject(:*)
end

def non_prime?(array)
  non_primes = []
  i = 1
  while i < array.length
    j = 1
    while j < i
      array[i] % array [j] == 0 ? non_primes << array[i] : non_primes
      j += 1
    end
    i += 1
  end
  non_primes = non_primes.uniq
end

def largest_power?(array, input)
  largest_powers = []
  n = 1
  while n < array.length
    x = 1
    largest_power = 1
    while array[n] ** x <= input
      largest_power = array[n] ** x     
      x += 1
    end
    largest_powers << largest_power
    n += 1
  end
  largest_powers = largest_powers.sort
end

print smallest_multiple(5)


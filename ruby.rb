#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the diagonalDifference function below.
def diagonalDifference(arr)
    n = arr.length - 1
    i = 0
    sum1 = 0
    sum2 = 0  
    while i <= n do
        sum1 += arr[i][i]
        sum2 += arr[i][n-i]
        i += 1
    end
    sum1 > sum2 ? sum1 - sum2 : sum2 - sum1
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
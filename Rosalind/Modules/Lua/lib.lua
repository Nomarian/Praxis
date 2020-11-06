#!/usr/bin/env lua

file = arg[1] or "dataset.txt"
--f = io.open(file)
buffersize=2^13 -- 8192

count = { A=0,G=0,C=0,T=0 }

-- should be fastest?, apart from lpeg
function method1()
 for data in io.lines(file,buffersize) do
  data,b = string.gsub(data,"A","")
  count.A = count.A + b
  data,b = string.gsub(data,"G","")
  count.G = count.G + b
  data,b = string.gsub(data,"C","")
  count.C = count.C + b
  data,b = string.gsub(data,"T","") -- could use string.len but what if lines?
  count.T = count.T + b
 end
end

method1()

-- print (string.format("%i %i %i %i",count.A,count.C,count.G,count.T))

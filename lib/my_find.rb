require 'pry'

def my_find(collection)
  i=0
  res=[]
  while i < collection.length
    res<<yield(collection[i])
    i+=1
  end
  #return the first element from the original collection that evaluates to true in the results array
  collection[res.index(true)]
end
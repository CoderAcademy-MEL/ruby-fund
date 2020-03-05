# Using some of the features in the past couple of problems, start turning your
# code into a basic PTV app (like our public transport app, if you aren't
# familiar). I have included a CSV of stations and lines from the HK Metro, but
# feel free to use any system you like. To interact with the CSV file in ruby
# have a look at these guides
#  - https://www.rubyguides.com/2018/10/parse-csv-ruby/
#  - https://ruby-doc.org/stdlib-2.7.0/libdoc/csv/rdoc/CSV.html

# I'm happy to give hints, or you can get together and help each other. You need
# to simplify things, so only dummy up one or at most two lines at first 
# (or at last!). 
# The final product (coded, or just pseudo-coded) would take a user's input of
# an origin station, and a destination station, and give the stations that the
# journey would pass through, including all train line changes. There is no need
# to worry about the train times, but feel free to add it if you want an extra
# challenge.

# Start with one train line, represented by an array. If you extend it to two 
# lines, you need to think about how to represent the lines as data, and this
# might be a complex object. Think through all the options and plan your app
# before you start coding. You will need some way to carry the user data through
# the method/s, and some way to represent the train system. You will likely need
# several small methods and classes, and will probably have to employ a full
# range of data types, such as hashes, custom objects, and arrays (and possibly
# arrays of arrays). 

# I am more than happy to help out anyone stuck, particularly if they have a 
# specific question where they are stuck and have thought about it. I'm also happy
# to look through code people would like reviewed. 

# Last note: This challenge has no tests associated with it. You should be familiar
# with how the tests work in the other challenges now and should create your own 
# specific to the way you choose to solve this problem and the code you implement.
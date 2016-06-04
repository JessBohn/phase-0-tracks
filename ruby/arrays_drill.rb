# Jessica Bohn & Kimberly Patton
# 06/03/2016

def method_of_arrays(array, y)
    new_array = array << y
end

def build_array(x, y, z)
    array = [x, y, z]
end    

books = []
p books

books = ["Harry Potter", "The Great Gatsby", "The Lord of the Rings", "The Hunger Games", "Pride & Prejudice"]
p books

books.delete_at(2)
p books

books.insert(2, "The Adventures of Huckleberry Finn")
p books

books.shift 
p books

p "The book The Great Gatsby appears in this array: #{books.include?("The Great Gatsby")}"


colors = ["blue", "pink", "green"]

books_and_colors = books + colors
p books_and_colors

p build_array(1, "two", nil)


p method_of_arrays([], "Hi")
p method_of_arrays([3, 5], 1)
p method_of_arrays(["Hello"], 7)
# Jessica Bohn & Kimberly Patton
# 06/03/2016

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
# p books.bsearch {|x| x == "The Hunger Games"}

colors = ["blue", "pink", "green"]

books_and_colors = books + colors
p books_and_colors
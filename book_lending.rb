#I know that some syntax is incorrect, but I'm submitting as is so i can move on to the next assignments since I've spent about 6 hours on this already. I understand the general idea of class methods & variables

class Book
  @@on_shelf = []
  @@on_loan = []

#instance_methods
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

#reader
def isbn
  @isbn
end

def due_date
  @due_date
end

def title
  @title
end

#writer
def due_date(due_date)
  @due_date = due_date
end

def change_title(title)
  @title = title
end

def borrow
   if self.lent_out?
     return @@on_loan
end

def return_to_library
  if self << @@on_shelf
    return true
  else
    return false
end

def lent_out?
  if self << @@on_loan
    return true
  else
  return false
end

#class methods
def self.create(title, author, isbn)
  new_book = Book.new(title, author, isbn)
  @@on_shelf << new_book
  return new_book
end

def self.current_due_date
  return Time.now()
end

def self.overdue_books
  @@on_shelf
end

def self.browse
  return self.rand
end

def self.available
  if @@on_shelf = true
end

def self.borrowed
  return @@on_loan
end

end

new_book = Book.create('title1', 'author1', 'isbn')
new_book2 = Book.create('title2', 'author2', 'isbn')
new_book3 = Book.create('title3', 'author3', 'isbn')
puts new_book2.inspect

class Book
  @@on_shelf []
  @@on_loan []

#reader
def due_date
  @due_date
end

#writer
def due_date(due_date)
  @due_date
end

#instance_methods
def initialize(title, author, isbn)
  @title = title
  @author = author
  @isbn = isbn
end

def borrow
end

def return_to_library
end

def lent_out?
end







end

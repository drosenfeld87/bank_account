class BankAccount
  @@interest_rate = 10.19
  @@accounts = []

  def initialize
    @balance = 0
  end

#class methods
  def self.create
    acc = BankAccount.new
    @@accounts << acc
    return acc
  end

  def self.total_funds
    total_funds = 0
    @@accounts.each do |account|
      total_funds += account.balance
    end
  end

  def self.interest_time
    @@accounts.each do |account|
      p account
      account.balance = (account.balance * @@interest_rate)
      p account
    end
  end

#reader
  def balance
    @balance
  end

#writer
  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance < 0
      puts "no funds to withdraw"
    @balance -= amount
    end
  end

account1 = BankAccount.create
account2 = BankAccount.create
p account1

account1.deposit(200)
puts account1.balance

account1.withdraw(4)
puts account1.balance

account1.interest_time
puts account1.balance

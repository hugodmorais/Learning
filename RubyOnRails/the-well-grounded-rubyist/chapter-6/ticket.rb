class Ticket
  attr_reader :name, :venue

  def initialize(name, venue, date)
    @name = name
    @venue = venue
    set_date(date)
  end

  def set_date(date)
    # Accept date in format "MM/DD/YY" or "yyyy-mm-dd"
    if date.include?('/')
      month, day, year = date.split('/')
      @date = "20#{year}-#{month}-#{day}"
    else
      year, month, day = date.split('-')
      if year.length == 4 && month.length == 2 && day.length == 2
        @date = date
      else
        puts "Please submit the date in the format 'yyyy-mm-dd' or 'MM/DD/YY'"
      end
    end
  end

  def date
    # Return date in format "MM/DD/YY"
    return nil unless @date
    year, month, day = @date.split('-')
    "#{month}/#{day}/#{year[2..3]}"
  end

  def date_internal
    @date
  end

  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed."
    end
  end

  def price
    @price
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end

  def ===(other)
    self.date_internal == other.date_internal
  end
end

class TicketComparer
  def self.compare(*tickets)
    return if tickets.empty?

    first_ticket = tickets.first
    tickets[1..-1].each do |ticket|
      case first_ticket
      when ticket
        puts "Same date as #{ticket.name}!"
      end
    end
  end
end


ticket1 = Ticket.new("ticket1", "Town Hall", "07/08/18")
ticket2 = Ticket.new("ticket2", "Convention Center", "07/08/18")
ticket3 = Ticket.new("ticket3", "Town Hall", "08/09/18")

puts "#{ticket1.name} is for an event on: #{ticket1.date}."

TicketComparer.compare(ticket1, ticket2, ticket3)

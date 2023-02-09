# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  def initialize(emails)
    @emails=emails
  end
  def parse
    split_up= @emails.split(/, |\s/)
    split_up.uniq
  end
end
e1= EmailAddressParser.new("john@doe.com, person@somewhere.org")
puts e1.parse
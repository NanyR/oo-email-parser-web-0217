# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  def initialize(unformatted_emails)
    @unformatted_emails=unformatted_emails
  end

  def parse
    parsed=@unformatted_emails.split(' ').collect do |email|
      /\W/=== email[-1] ? email.chop : email
      end
      parsed.uniq 
    end

end

def find_missing_number(sequence)
  if sequence.split.map =~ /[0-9999]/
    return 1
  else
    @sequence = sequence.split.map(&:to_i).sort
  end
  @previous = 0
  @sequence.each do |current|
    if @next == current || current == @previous || current == @sequence.first    
      if current == @sequence.last
      return 0
    end
  else
    return @next
  end
  @previous = current
  @next = current.next
end
end
find_missing_number("1 2 3 4 5 6 7 8 54 9")

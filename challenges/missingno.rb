def find_missing_number(sequence)
  #Splt, map, and sort
  if sequence.split.map =~ /[0-9999]/
    #puts "No dang letters"
    return 1

  else
    @sequence = sequence.split.map(&:to_i).sort

  end
  @previous = 0
  @sequence.each do |current|
    if @next == current || current == @previous || current == @sequence.first
     #puts "---------"
     #puts "Current: #{current} Class:#{current.class}"      
     #puts "Previous: #{current} Class:#{@previous.class}"
     #puts "Expected next: #{current.next}"
      if current == @sequence.last
      #puts "End of list, successful run"
      return 0
    end
  else
    #puts "-------------"
    #puts "Expected Next: #{@next}"
    return @next
  end
  @previous = current
  @next = current.next
end
end
find_missing_number("1 2 3 4 5 6 7 8 54 9")

#Final working solution
def find_missing_number(sequence)
  #Splt, map, and sort
  if sequence == ""
    return 0
  elsif sequence.split.map =~ /[0-9999]/
    #puts "No dang letters"
    return 1
  else
    @sequence = sequence.split.map(&:to_i).sort
    if @sequence.first != 1
    return 1
    end
  end
  @previous = 0
  @sequence.each do |current|
    if @next == current || current == @previous || current == @sequence.first
     #puts "---------"
     #puts "Current: #{current} Class:#{current.class}"      
     #puts "Previous: #{current} Class:#{@previous.class}"
     #puts "Expected next: #{current.next}"
      if current == @sequence.last
      #puts "End of list, successful run"
      return 0
    end
  else
    #puts "-------------"
    #puts "Expected Next: #{@next}"
    return @next
  end
  @previous = current
  @next = current.next
end
end
#best practices solution:
def find_missing_number(sequence)
  number_sequence = sequence.split.map(&:to_i).sort
  #Values not able to converted to integer do not get index?
  number_sequence.each.with_index(1) do |actual, expected|
    return expected unless actual == expected
  end
  
  0
end

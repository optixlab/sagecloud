#/usr/bin/perl
#takes a line and makes a word count

%countWords;

# main part of the script

&countwords();
print "Print the hash of words;\n";
foreach $key (keys %wordCount) {
  print "$key => $wordCount{$key}\n";
}

# subroutines

sub countwords() {
  my $line = "here is a line of words, here is the word here again.";
  my @line_words = split(/\W/, $line);
  foreach my $word (@line_words) {
    if ($wordCount{$word}) {
	$wordCount{$word}++;
	} else {
	  $wordCount{$word} = 1;
	}
    } # end for loop

} # end countWords

#! usr/bin/perl

$search_pattern = @ARGV[0];
@files = glob("*.*");

foreach $file (@files) {
 open $INPUT, '<', $file or die "couldn't open";
 print "\n";
 while (my $line = <$INPUT>)
   {
     $line =~ /$search_pattern/ && print "File Name : ", $file,"\nLine No : ", $.,"\nMatch Found : ",$line;
   }
 close($INPUT);
}

# Declare package 'Bob' with version
package Bob 2;
use strict;
use warnings;
use Switch;

sub hey {
  my ($msg) = @_;
 
  return $msg;

  if (length $msg == 0){
	return {"Fine. Be that way!"}
  }
  switch(substr $msg, -1){
	  case "!" {return "Whoa, chill out!"}
	  case "?" {return "Sure."}
	  else {return "Whatever."}
  }
  
}

1;

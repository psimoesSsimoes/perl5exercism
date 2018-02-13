package Clock;

use overload '-' => "subtract",
	     '+' => "add",
	     '""' => "to_string",
	     'eq'=> "equal";

sub new{
	my ($class,$arr )=@_;
	my $self;
	if (@$arr == 1){
		print STDERR "atum\n\n";	
		$self = bless {hour=>"@$arr[0]",min=>"0"}=>$class;

	}else{
		$self = bless {hour=>"@$arr[0]",min=>"@$arr[1]"}=>$class;
	}
	
	$self->_numbers_as_clock;

	return $self;

}
sub equal {
	my ($class1,$class2)=@_;
	if ($class1->{hour}==$class2->{hour} && $class1->{min} && $class2->{min}){
		return 1;
	}

		return 0;
}

sub _numbers_as_clock{
	my $self = shift;
	$self->{hour}="0$self->{hour}" if $self->{hour} < 10;
	$self->{min}="0$self->{min}" if $self->{min} < 10;

} 


sub to_string {
    my $self = shift;
    return "$self->{hour}:$self->{min}";
}

sub subtract{
	my ($class,$num) = @_;
	$class->{min}-=$num;
	return _fix_time($class->{hour},$class->{min});
}


sub add{
	my ($class,$num) = @_;
	$class->{min}+=$num;
	return _fix_time($class->{hour},$class->{min});
}

sub _mod{
	my ($x,$y)= @_;
	
	my $mod=$x%y;
	
	if ($mod < 0){
		$mod+=$y;
	}
	return $mod;
}

sub _fix_time{
	my ($h,$m)= @_;
	
	if ($m < 0 && $m==-60){

	}elsif($m<0){
		$m-=60;
	}
	$h+=$m/60;
	$m=_mod($m,60);
	$h=_mod($h,24);
	print STRDERR $h;	
	print STRDERR $m;	
	return "$h:$m";
}


1;

#!/usr/bin/perl

# to debug: perl -d << name of perl program >>

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name, $age
@#####.##
$salary
===================================
.

format EMPLOYEE_TOP =
@|||||||||||||||||||||||||||||||||@
"EMPLOYEE SALARY REPORT" 
Name                    Age Page @<
                                 $%
------                  ---
Salary
-----------------------------------
.

format EMPLOYEE_BOTTOM =
End of Page @<
            $%
.

select(STDOUT);
$^ = EMPLOYEE_TOP; # heading
$~ = EMPLOYEE;     # detail lines


@n = ("Ali", "Raza", "Jaffer", "Diovanni");
@a  = (20, 30, 40, 50);
@s = (2000.00, 2500.00, 4000.00, 50000.00);

# you are allowed to modify all of these variables:
# $= is current page's max linecount
# $- is the # of lines left on the page (& it starts out as 0)
# $% is the current page number

$i = 0;
if( $- == 0 ){ $- = 1 ; }
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   if( $- <= 0 ){ print "$- is over $=\n";
   } # else{ print "$- is under $=\n";
#  } 
   write;
}

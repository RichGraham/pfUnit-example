module myFunction
  implicit none
 

contains
  
double precision function mySquare( x )
  implicit none
  double precision, intent(in) :: x

  mySquare = x*x

end function mySquare

end module myFunction

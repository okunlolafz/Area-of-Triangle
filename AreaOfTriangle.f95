! Okunlola Faozee Bayo | 123456 | Mechanical Engineering
! A program that evaluates the Area of a Triangle with given sides

program AreaOfTriangle
    implicit none

    ! Declaration of Variables
    real :: a, b, c
    real :: Area, theta

    ! Opening & Reading External Files
    open(1, File="Input.txt")
    read(1, *) a, b, c

    ! Calculations
    call Calculator(a, b, c, theta)
    Area = 0.5 * a * b * sind(theta)

    ! Display Output
    open(2, File="Output.txt")
    write(2, *) "Theta     Area of Triangle"
    write(2, "(f7.2, f10.2)") theta, Area

end program AreaOfTriangle


subroutine Calculator(x, y, z, theta)
    real :: x, y, z
    real :: theta
    theta = acosd((x**2 + y**2 - z**2) / (2*x*y))
end subroutine Calculator
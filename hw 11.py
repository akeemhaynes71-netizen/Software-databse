def findproduct(maxnum):
    product = 1
    for num in range(1, maxnum +1):
        product *= num
    if product > 1000:
        print("large value")
    else:
        print("product:", product)
def paycalculator():
    ID = int(input("enter employee ID number"))
    print(" ID number:",ID)
    Firstname = input("enter First name")
    print("First Name:",Firstname)
    Lastname = input("enter last name")
    print("Last name:",Lastname)
    Hours = float(input("enter Hours"))
    print("Hours:",Hours)
    hourlypay = float(input("enter Hourly pay"))
    print(" enter hourly:",hourlypay)
    if Hours <= 40:
        grosspay = hourlypay * Hours
    else:
        rg = 40
        ot = Hours - rg
        Overtimepay = 1.5 * hourlypay
          
        grosspay = Hours * hourlypay + ( ot * hourlypay )
def scorecalculator():
    numtest = int(input(" enter number of test "))
    if numtest >= 1:
        print( "enter a number 1 or more" )
    for x in range(numtest):
        testscore = float(input("enter score"))
    if testscore >= 40 and testscore <= 100:
        
        if  sum == 0:
            print(" average cant be calculated")

        else:
            sum == testscore/numtest
            print("average score:",sum)
            
def iseven(num):
    if num % 2 :
        print(" its odd",num)
    else:
        print(" how even",num)

def main():
    findproduct(5)
    paycalculator()
    scorecalculator()
    num = int(input("enter a number"))
    iseven(num)
    
main()
    


    
        
    

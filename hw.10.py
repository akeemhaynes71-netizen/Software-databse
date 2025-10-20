print("My Name:Akeem Haynes")
lastname=(input("enter your last name"))
print(f"MY Last Name IS:{lastname}")

if lastname=="python":
    print("you share a name with the programming language")
else:
    print("Not a language")

number =float(input("Enter a number"))
if 0<= number <=10:
    print("Hello")
else:
    print("Greetings")

quantity=int(input("enter the number of products sold"))
if quantity <=0:
    print("invalid number")
else:
    unitcost=float(input("what is the unit cost?"))

if 1 <= quantity <=19:
    discountrate = 0.20
elif 20 <= quantity <= 49:
    discountrate = 0.30
elif 50 <= quantity <= 99:
    discountrate = 0.40
else:
    discountrate = 0.50

costbefore = quantity*unitcost
discountamount = costbefore*discountrate
finalcost = costbefore - discountamount

print(f"number of items sold: {quantity}")
print(f"unit cost: {unitcost:.2f}")
print(f"cost before discount: {costbefore:.2f}$")
print(f"discount rate: {int(discountrate*100)}%")
print(f" discount amount: {discountamount:.2f}")
print(f"final cost: {finalcost:.2f}")

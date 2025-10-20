#Python: Python is a high-level, interpreted programming language known for its simplicity, readability, and versatility. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming.
#Cython is a programming language that is a superset of Python. It allows Python code to be compiled into C code, which can then be compiled into fast native machine code. This makes Python programs faster and allows them to interact with C/C++ code directly.
#Jython is an implementation of Python that runs on the Java Virtual Machine (JVM). It allows Python code to seamlessly integrate with Java libraries and applications.
#Interpretation is the process of directly executing instructions written in a high-level programming language by using an interpreter, which translates code into machine instructions line-by-line or statement-by-statement at runtime.
#Advantages:
#Immediate execution of code without a separate compilation step, making it faster for development and testing.
#Errors are displayed as they occur, simplifying debugging.
#Disadvantages:
#Programs run slower because translation happens at runtime.
#Source code must be distributed, which might expose intellectual property.



p= int(name,  ' ' , f'your annual pay is ${annualincome:,.2f}')

print("my Name: akeem haynes")


subtotal = float(input("Enter subtotal of bill: "))


gratuity_rate = int(input("Enter gratuity rate (as a whole number): "))
print("Subtotal: $", format(subtotal, '.2f'), sep="")

gratuity = subtotal * (gratuity_rate / 100)
print("Gratuity Rate: $", format(gratuity, '.2f'), sep="")


tax_rate = 8  
tax = subtotal * (tax_rate / 100)
print("Tax: $", format(tax, '.2f'), sep="")


grand_total = subtotal + gratuity + tax
print("Grand Total: $", format(grand_total, '.2f'), sep="")


weight_pounds = float(input("Enter your weight in pounds: "))
print("Pounds: ", format(weight_pounds, '.2f'), sep="")


weight_kilograms = weight_pounds * 0.453592
weight_grams = weight_kilograms * 1000
weight_milligrams = weight_kilograms * 1000000

print("Kilograms: ", format(weight_kilograms, '.2f'), sep="")
print("Grams: ", format(weight_grams, '.2f'), sep="")
print("Milligrams: ", format(weight_milligrams, '.2f'), sep="")


height_feet = int(input("Enter your height in feet: "))
height_inches = int(input("Enter your height in inches: "))


total_height_inches = (height_feet * 12) + height_inches
bmi = (weight_pounds * 703) / (total_height_inches ** 2)
print("Body Mass Index: ", format(bmi, '.2f'), sep="")

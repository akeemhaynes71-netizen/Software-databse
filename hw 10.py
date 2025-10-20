##akeem haynes
##cit129
##11/2/23
gender = input("Enter the gender (Male or Female): ").strip().capitalize()


if gender not in ["Male", "Female"]:
    print("Error: Please enter 'Male' or 'Female' as the gender.")
else:
   
    try:
        weight = float(input("Enter the weight (in kilograms): "))
        
        if weight < 0 or weight > 1000:
            print("Error: Please enter a valid weight (between 0 and 1000 kilograms).")
        else:
            
            A1, A2, A3, A4, A5, B = 0, 0, 0, 0, 0, 0
            body_fat, body_fat_percentage = 0, 0

            if gender == "Male":
                
                A1 = (weight * 1.082) + 94.42
                waist_measurement = float(input("Enter waist measurement (in centimeters): "))
                A2 = waist_measurement * 4.15
                B = A1 - A2
            else:
               
                A1 = (weight * 0.732) + 8.987
                wrist_measurement = float(input("Enter wrist measurement (in centimeters): "))
                A2 = wrist_measurement / 3.14
                waist_measurement = float(input("Enter waist measurement (in centimeters): "))
                A3 = waist_measurement * 0.157
                hip_measurement = float(input("Enter hip measurement (in centimeters): "))
                A4 = hip_measurement * 0.249
                forearm_measurement = float(input("Enter forearm measurement (in centimeters): "))
                A5 = forearm_measurement * 0.434
                B = A1 + A2 - A3 - A4 + A5

            
            body_fat = weight - B
            body_fat_percentage = (body_fat / weight) * 100

            
            print("Intermediate variables:")
            print(f"A1: {A1}")
            print(f"A2: {A2}")
            if gender == "Female":
                print(f"A3: {A3}")
                print(f"A4: {A4}")
                print(f"A5: {A5}")
            print(f"B: {B}")

            
            print("Body fat: {:.2f} kilograms".format(body_fat))
            print("Body fat percentage: {:.2f}%".format(body_fat_percentage))

            
            if gender == "Male":
                if body_fat_percentage < 6:
                    print("You have essential body fat.")
                elif 6 <= body_fat_percentage < 24:
                    print("You have an athlete body fat percentage.")
                elif 24 <= body_fat_percentage < 31:
                    print("You have a fitness body fat percentage.")
                elif body_fat_percentage >= 31:
                    print("You have an obese body fat percentage.")
            else:  # Female
                if body_fat_percentage < 16:
                    print("You have essential body fat.")
                elif 16 <= body_fat_percentage < 30:
                    print("You have an athlete body fat percentage.")
                elif 30 <= body_fat_percentage < 36:
                    print("You have a fitness body fat percentage.")
                elif body_fat_percentage >= 36:
                    print("You have an obese body fat percentage.")
    except ValueError:
        print("Error: Please enter a valid weight (between 0 and 1000 kilograms).")


        
   

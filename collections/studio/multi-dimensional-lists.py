food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.

food = food.split(",")
food.sort()

equipment = equipment.split(",")
equipment.sort()

pets = pets.split(",")
pets.sort()

sleep_aids = sleep_aids.split(",")
sleep_aids.sort()

print("Food cabinet:", food)
print("Equipment cabinet:", equipment)
print("Pets cabinet:", pets)
print("Sleep aids cabinet:", sleep_aids)



# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.

cargo_hold = [food, equipment, pets, sleep_aids]
print("Cargo_Hold:", cargo_hold)

# # c) Query the user to select a cabinet (0 - 3) in the cargo_hold.

selection = int(input("choose a cabinet(0-3):"))






# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
if 0 <= selection < len(cargo_hold):
    print(f"Contents of cabinet {selection}: {cargo_hold[selection]}")
else:
    print("error invalid cabinet number. please enter a number between 0-3")


# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”


particular_item = (input("Enter a particular item:"))
print(cargo_hold[selection])
if particular_item in cargo_hold[selection]: 
    print(f"cabinet{selection} does contain {particular_item}")
else:
      print(f"cabinet{selection} does not contain {particular_item}")


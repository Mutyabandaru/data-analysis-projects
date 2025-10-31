# 1. Declare and assign the variables here:
Space_shuttle_Name = 'Determination'
Shuttle_Speed_mph = 17500
Distance_To_Mars_km = 225000000
Distance_To_Moon_km = 3844000
Miles_Per_Kilometers = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(Space_shuttle_Name))
print(type(Shuttle_Speed_mph))
print(type(Distance_To_Mars_km))
print(type(Distance_To_Moon_km))
print(type(Miles_Per_Kilometers))
# Code your solution to exercises 3 and 4 here:
Miles_To_Mars = Distance_To_Mars_km * Miles_Per_Kilometers
print(Miles_To_Mars)

Hours_To_Mars = Miles_To_Mars / Shuttle_Speed_mph
print(Hours_To_Mars)

Days_To_Mars = Hours_To_Mars / 24
print(Days_To_Mars)

print(f"{Space_shuttle_Name} will take {Days_To_Mars} days to reach Mars.")



# Code your solution to exercise 5 here"
Miles_To_Moon = Distance_To_Moon_km * Miles_Per_Kilometers
print(Miles_To_Moon)

Hours_To_Moon = Miles_To_Moon / Shuttle_Speed_mph
print(Hours_To_Moon)

Days_To_Moon = Hours_To_Moon / 24
print(Days_To_Moon)

print(Space_shuttle_Name + " will take " + str(Days_To_Moon) + " days to reach Moon.")
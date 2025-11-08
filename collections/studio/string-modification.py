my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.

modified = my_string[3:] + my_string[:3]

# Use a template literal to print the original and modified string in a descriptive phrase.

print(f'The original string is "{my_string}", and after rearranging it becomes "{modified}".')

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

word = input("Enter a word: ")
relocation = int(input("number_of_letters:"))
modified = my_string[relocation:] + my_string[:relocation]

print(f'The original string is "{my_string}", and after rearranging it becomes "{modified}".')


# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.

word = input("Enter a word: ")
relocation = int(input("number_of_letters:"))
if relocation > len(word): 
    relocation = 3
modified = word[relocation:] + word[:relocation]
print(f"Original word: {word} → Pseudo-Pig Latin: {modified}")


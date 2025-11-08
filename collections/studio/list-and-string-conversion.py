proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.

for s in strings:
    # a) Check what delimiter is used
    if ',' in s and ', ' not in s:
        print(f" String: '{s}' uses commas as delimiter.")
    elif ';' in s:
        print(f" String: '{s}' uses semicolons as delimiter.")
    elif ' ' in s and ',' not in s and ';' not in s:
        print(f" String: '{s}' uses spaces as delimiter.")
    elif ', ' in s:
        print(f" String: '{s}' uses comma+spaces as delimiter.")
    else:
        print(f" String: '{s}' delimiter unknown or none.")



# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.
    if ',' in s and ', ' not in s:
        arr = s.split(',')
        result_b = ','.join(arr[::-1])
        print(f"b) Result: {result_b}")


# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.

    elif ';' in s:
        arr = s.split(';')
        result_c = ','.join(sorted(arr))
        print(f"c) Result: {result_c}")

# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.
    elif ' ' in s and ',' not in s and ';' not in s:
        arr = s.split(' ')
        result_d = ' '.join(sorted(arr, reverse=True))
        print(f"d) Result: {result_d}")


# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
    elif ', ' in s:
        arr = [item.strip() for item in s.split(',')]
        result_e = ','.join(arr[::-1])
        print(f"e) Result: {result_e}")


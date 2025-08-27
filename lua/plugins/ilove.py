user=input("Enter Your username :")
passwd=input("Enter your password :")
while True:
    if(user=='admin' and passwd=='password'):
        print('pass')
        break
    else:
        print("over")
        user=input("Enter Your Username:")
        passwd=input("Enter Your password:")

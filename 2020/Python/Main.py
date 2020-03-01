#import module
import math

'''
Collection of some small practice questions

Create a Cricle class and intialize it with radius. Make two methods getArea and getCircumference inside this class.
'''


class circle():
    def __init__(self,radius):
        self.radius = radius
    def getArea(self):
        return 3.14*(self.radius *self.radius)
    def getCircumference(self):
        return 3.14*self.radius*2


Circle = circle(5)
print(Circle.getArea())
print('%.2f'%Circle.getCircumference()) #limit decimal places by '%.2f'%value
print("\n\n\n")

'''
Create a Temprature class. Make two methods :
1. convertFahrenheit - It will take celsius and will print it into Fahrenheit.
2. convertCelsius - It will take Fahrenheit and will convert it into Celsius.
'''

#we do not need a constructor for this class
class Temperature():
    def convertFahrenheit(self, celsius):
        return(celsius * 1.8) + 32
    def convertCelcius(self, fahrenheit):
        return(fahrenheit - 32) / 1.8


myTemp = Temperature()
cTemp = 20
fTemp = 68
print("farhenheit",myTemp.convertFahrenheit(cTemp))
print("celcius", myTemp.convertCelcius(fTemp))
print('\n\n\n')

'''
Create a Student class and initialize it with name and roll number. Make methods to :
1. Display - It should display all informations of the student.
2. setAge - It should assign age to student
3. setMarks - It should assign marks to the student.
'''

class Student():
    def __init__(self,name, roll_number):
        self.roll_number = roll_number
        self.name = name
        self.Age = None
        self.Marks = None

    def Display(self,):
        print("\nRoll Number : ", self.roll_number,
              "\nName : ", self.name,
              "\nAge : ", self.Age,
              "\nMarks : ", self.Marks)

    def setAge(self, Age):
        self.Age = Age
    def setMarks(self, Marks):
        self.Marks = Marks

Mauricio = Student("Mauricio",8)
Mauricio.Display()
Mauricio.setAge(24)
Mauricio.setMarks(4.0)
Mauricio.Display()
print("\n\n\n")


"""
Question:
    Define a class, which have a class parameter and have a same instance parameter.
"""

class Person:
    name = "Person"

    def __init__(self, name = None):
        self.name = name

jeffrey = Person("Jeffrey")
print ("%s name is %s" %(Person.name, jeffrey.name))

nico = Person()
nico.name = "Nico"
print ("%s name is %s" % (Person.name, nico.name))
print("\n\n\n")


"""
Question:
Define a class named American and its subclass NewYorker. 
"""

class American(object):
    pass #allows function.class to be empty

class NewYorker(American):
    pass

anAmerican = American()
aNewYorker = NewYorker()
print (anAmerican)
print (aNewYorker)
print("\n\n\n")


"""
Write a Python program to create a singly linked list, append some items and iterate through the list.
extra material, finish the linked list with all useful functions
"""

#remember for lists we create both the node class and the list class
class Node:
    #singly linked node
    def __init__(self, data=None):
        self.data = data
        self.next = None

class singly_linked_list:
    def __init__(self):
        #create an empty list
        self.tail = None
        self.head = Node() #in this model our head will always be empty (not sure if i like it)
        self.count = 0

    def append(self, data): #add a node
        new_node = Node(data)
        cur = self.head
        while cur.next != None: #if next is empty, we will add new node to end
            cur = cur.next
        cur.next = new_node
        self.tail = new_node #while we are add it. the node we append is the tail node

    def length(self):
        cur = self.head
        total = 0
        while cur.next != None:
            cur = cur.next
            total += 1
        return total

    def display(self):
        linkedlist = []
        cur = self.head
        while cur.next != None:
            cur = cur.next #we go to next because our head is empty
            linkedlist.append(cur.data) #then we add data to list
        print(linkedlist)

    def get(self, index):
        count = 0
        cur = self.head
        if index <= self.length():
            while cur.next != None:
                if index == count:
                    return cur.data
                else:
                    cur = cur.next
                    count +=1
        else:
            print("ERROR: index out of bounds")
            return

    def erase(self, index):
        if index >= self.length() or index < 0:
            print("ERROR: index out of range")
            return
        count = 1
        cur = self.head
        while True:
            last = cur
            cur = cur.next #so now we have cur node and last as the one before
            if count == index:
                last.next = cur.next #so our previous nodes "next" will be not this node but the one after
                return               #that way we can take out the middle node without breaking chain
            count += 1

    def iterate(self): #yield each node
        cur = self.head
        while cur.next != None:
            cur = cur.next
            yield cur.data
        return

linkedlist = singly_linked_list()

linkedlist.append('apple')

linkedlist.display()
linkedlist.append("banana")
linkedlist.append("melon")
linkedlist.append("strawberry")
linkedlist.append("pear")
linkedlist.append("mango")
linkedlist.display()
print(linkedlist.length())
print(linkedlist.get(3)) #with this system, third item is 1,2,3 not 0,1,2
for val in linkedlist.iterate():
    print(val)

print("\n")
linkedlist.erase(2)
linkedlist.display()

print('\n')

'''
Cloud pathing problem.
find the shortest path. you can hop on 0, not on 1
you can either advance 1 or 2 spots.
'''
count = 0
jumps = 0
c = [0,1,0,0,1,0,0,1,0]
while count < len(c) - 1:  # we assume the last cloud cant be thunder
    if count < (len(c) - 2) and c[(count + 2)] != 1:
        jumps += 1
        count += 2
    else:
        jumps += 1
        count += 1
print(jumps)
print('\n\n')


s = "abcda"
count = s.count('a')
print(count)
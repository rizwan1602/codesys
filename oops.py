class Basecoat:
    def __init__(self):
        self.__xaxis=10
        self.__yaxis=20
    
    def robot1start(self):
        print("robot 1 started")
    
    def robot2start(self):
        print("robot2 started")
    
    def changeaxis(self,axis):
        if axis:
            self.__xaxis += axis
            print(self.__xaxis)

    def getaxis(self):
        print(f"📌 Current Position: X = {self.__xaxis}, Y = {self.__yaxis}") 

class Clearcoat(Basecoat):
    def robot3start(self):
        print("robot 3 start")

# obj= Clearcoat()
# obj.robot1start()
# obj.getaxis()


#////polymorphism

def robot(coat):
    coat.robot1start()


obj = Clearcoat()

robot(obj)





# obj = Basecoat()
# obj.robot1start()
# obj.robot2start()
# obj.getaxis()
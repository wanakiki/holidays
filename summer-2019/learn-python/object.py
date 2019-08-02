class partyAnimal:
    x = 0
    name = ''

    def __init__(self, z = ''):
        self.name = z
        print(self.name, 'constructed')

    def party(self):
        self.x = self.x + 1
        print(self.name, 'So far', self.x)

    def __del__(self):
        print(self.name, 'destructed', self.x)

# 继承
class footballFan(partyAnimal):
    points = 0
    def touchDown(self):
        self.points = self.points + 7
        self.party()
        print(self.name, 'points', self.points)

an = partyAnimal('sally')
print(an.x)
an.party()
partyAnimal.party(an)   #两种表述等价

an = 42
print('an contains', an)

# print('Type', type(an))
# print('Dir', dir(an))
print('==============')
s = footballFan('tim')
s.party()
s.touchDown()

from tkinter import *

root = Tk()

e = Entry(root, width=50)
e.pack()

alphabet= {"a":"/ei/","b":"/bi:/","c":"/si:/","d":"/di/","e":"/i:/","f":"/ef/",
			"g":"/dzi/","h":"/e:tS/","i":"/ai/","j":"jay /dzei/","k":"kay/kei/",
			"l":"/el/","m":"/em/","n":"/en/","o":"/ou/", "p":"/pi:/",
			"q":"/kju:/","r":"/ar/","s":"/es/","t":"/ti:/", "u":"iu/ju:/",
			"v":"vee/vi:/","w":"double-iu /dvbel ju:/","x":"/eks/","y":"wye/wai/", 
			"z":"/zi/"}

like={"a":"alpha","b":"bavo","c":"charlie","d":"delta","e":"echo","f":"foxtrot",
			"g":"golfo","h":"hotel","i":"India","j":"juliet","k":"kilo",
			"l":"lima","m":"mike","n":"november","o":"oscar", "p":"papa",
			"q":"quebec","r":"romeo","s":"sierra","t":"tango", "u":"uniform",
			"v":"victor","w":"whiskey","x":"x-ray","y":"yankee", 
			"z":"zulu"}
def myDelete():
	#myLabel.pack_forget()
	#myLabel.grid_forget()
	myLabel.destroy()
	#for widget in myLabel.winfo_children():
	#	widget.destroy()
	myButton['state']= NORMAL

def myClick():
	hello=e.get()
	global myLabel
	i=0
	e.delete(0, 'end')
	while i < len(hello):
		if hello[i] in alphabet:
			letra=hello[i]
			x=alphabet[letra]
			y=like[letra]
			#print(alphabet[letra])
			myLabel = Label(root, text=letra+": "+x+"  like  "+y)
			myLabel.pack()
		i+=1
		myButton['state'] = DISABLED


myButton = Button(root, text="Spell your word",  command=myClick)
myButton.pack()

DeleteButton = Button(root,text="Delete text", command=myDelete)
DeleteButton.pack(pady=10)

root.mainloop()

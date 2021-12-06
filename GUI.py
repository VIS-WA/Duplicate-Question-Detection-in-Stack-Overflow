######### import the required libraries
import tkinter as tk
from tkinter import *
from tkinter import ttk
from tkinter import filedialog as fd
from tkinter.messagebox import showinfo
from PIL import ImageTk,Image
import time 
import matplotlib.pyplot as plt
import tkinter.scrolledtext as scrolledtext
######### create the root window
root = tk.Tk()
root.title('Similar Question detector')
root.resizable(True, True)
root.geometry('1920x1080')
#root.config(bg='yellow')

my_frame = Frame(root, width=576, height=324,bg='black')
my_frame.pack(fill="both", expand=True)

img = ImageTk.PhotoImage(file="bg.jpg")
label = Label(
    my_frame,
    image=img
)
label.place(x=0, y=0)

####################### global &/ initialisations
title,body,tag = "Title","Body","Tag" # Entries to be entered by the user
text_t2 = 0
titles = ["one","two","three"]

#######################

def on_change1(tite): # retrieve the title entered
    global title,titles
    title = tite.widget.get()
    txt.delete('1.0', END)
    txt.insert('insert', title,"\n")
    print("Title Entered:",title)

def on_change2(bode): # retrieve the title entered
    global body
    body = bode.widget.get()
    print("Body Entered:",body)

def on_change3(tage): # retrieve the title entered
    global tag
    tag = tage.widget.get()
    print("Tags Entered:",tag)

########################

# entry for title =====
L2 = Label(root, text="Enter the Title:",fg='black',bg='white')
L2.pack( side = LEFT)
L2.place( x = 50,y=50)
tite=Entry(root, bd=2,textvariable=title)
tite.pack()
tite.place(x=180, y=45,width = 1600, height=30)
tite.bind("<Return>",on_change1)

# entry for body =====
L3 = Label(root, text="Enter the Body:",fg='black',bg='white')
L3.pack( side = LEFT)
L3.place(x=50,y=90)
bode=Entry(root, bd=2,textvariable=body)
bode.pack()
bode.place(x=180, y=85,width = 1600, height=30)
bode.bind("<Return>",on_change2)

# entry for tags =====
L4 = Label(root, text="Enter the Tags:",fg='black',bg='white')
L4.pack( side = LEFT)
L4.place( x = 50,y=130)
tage=Entry(root, bd=2,textvariable=tag)
tage.pack()
tage.place(x=180, y=125,width = 1600, height=30)
tage.bind("<Return>",on_change3)

#####################

# open button 1 ======> submit button
open_button_1 = Button(root,bg='black', fg='white', text='Submit')#,command=calc)
open_button_1.pack(expand=True)
open_button_1.place(x=950, y=200) #1238,400
"""
## 1st similar question
# Print the 1st similar questions =====

SL1 = Label(root, text="1st Similar Qn:-",fg='black',bg='white')
SL1.pack( side = LEFT)
SL1.place( x = 50,y=300)
S1 = Label(root,text=titles[0],bg='white',fg='black') #,textvariable=titles[0])
S1.pack( side = LEFT)
S1.place( x = 190,y=300)

# open button 2 ======> Body button
open_button_2 = Button(root,bg='black', fg='white', text='Body')#,command=calc)
open_button_2.pack(expand=True)
open_button_2.place(x=450, y=350) 

## 2nd similar question
# Print the 2nd similar questions =====

SL2 = Label(root, text="2nd Similar Qn:-",fg='black',bg='white')
SL2.pack( side = LEFT)
SL2.place( x = 50,y=400)
S2 = Label(root,text=titles[1],bg='white',fg='black') #,textvariable=titles[0])
S2.pack( side = LEFT)
S2.place( x = 190,y=400)

# open button 3 ======> Body button
open_button_3 = Button(root,bg='black', fg='white', text='Body')#,command=calc)
open_button_3.pack(expand=True)
open_button_3.place(x=450, y=450) 

## 3rd similar question
# Print the 3rd similar questions =====

SL3 = Label(root, text="3rd Similar Qn:-",fg='black',bg='white')
SL3.pack( side = LEFT)
SL3.place( x = 50,y=500)
S3 = Label(root,text=titles[2],bg='white',fg='black') #,textvariable=titles[0])
S3.pack( side = LEFT)
S3.place( x = 190,y=500)

# open button 4 ======> Body button
open_button_4 = Button(root,bg='black', fg='white', text='Body')#,command=calc)
open_button_4.pack(expand=True)
open_button_4.place(x=450, y=550) 
"""
"""
scroll_bar = Scrollbar(root)
  
scroll_bar.pack( side = RIGHT, fill = Y )
   
mylist = Listbox(root, yscrollcommand = scroll_bar.set )
mylist.place(x = 190, y= 500)
   
for line in range(1, 26):
    mylist.insert(END, "Geeks " + str(line))
  
mylist.pack( side = LEFT, fill = BOTH )
  
scroll_bar.config( command = mylist.yview )
"""
txt = scrolledtext.ScrolledText(root, undo=True, wrap='word',width=150,height=40)
txt['font'] = ('consolas', '12')
txt.pack(expand=True, fill='both')
txt.place(x=200, y=250)

########################

# run the application
root.mainloop()


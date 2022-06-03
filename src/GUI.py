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


# !apt-get install -y xvfb # Install X Virtual Frame Buffer
# import os
# os.system('Xvfb :1 -screen 0 1600x1200x16  &')    # create virtual display with size 1600x1200 and 16 bit color. Color can be changed to 24 or 8
# os.environ['DISPLAY']=':1.0'    # tell X clients to use our virtual DISPLAY :1.0

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
titles = ["one","two","three"]
kval = 5

#######################

def on_change1(tite): # retrieve the title entered
    global title,titles
    title = tite.widget.get()
    print("Title Entered:",title)

def on_change2(bode): # retrieve the body entered
    global body
    body = bode.widget.get()
    print("Body Entered:",body)

def on_change3(tage): # retrieve the tags entered
    global tag
    tag = tage.widget.get()
    print("Tags Entered:",tag)

def on_change4(ke): # retrieve the k-value entered
    global kval
    kval = int(ke.widget.get())
    print("K-value Entered:",kval)

def sub():
    global title, body, tag
    fs = top_k_qn(title,body,tag,kval)
    txt.delete('1.0', END)
    txt.insert('insert', fs,"\n")



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

# entry for k value =====
L5 = Label(root, text="Enter k-value:",fg='black',bg='white')
L5.pack( side = LEFT)
L5.place( x = 50,y=170)
ke=Entry(root, bd=2,textvariable=kval)
ke.pack()
ke.place(x=180, y=165,width = 100, height=30)
ke.bind("<Return>",on_change4)

#####################

# open button 1 ======> submit button
open_button_1 = Button(root,bg='black', fg='white', text='Submit',command=sub)
open_button_1.pack(expand=True)
open_button_1.place(x=950, y=200) #1238,400

txt = scrolledtext.ScrolledText(root, undo=True, wrap='word',width=150,height=40)
txt['font'] = ('consolas', '12')
txt.pack(expand=True, fill='both')
txt.place(x=200, y=250)

########################

# run the application
root.mainloop()


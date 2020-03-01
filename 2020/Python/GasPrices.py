'''
Mauricio Parra 2/27/2020
GasPrices retrieves gas price information from a database
and uses a simple GUI to show state regular gas prices
-little error handling
'''
##install pandas
##install xlrd

import tkinter as tk
import pandas as pd


'''
getData - gets data from excel file in link, keeps only bottom line, cleans header and time
-returns a dictionary of key-states and value-prices
-made to be modular so it can take addition of states as long as we change A,K:S range
'''
def getData(webpage):

    #our info is on the 3rd sheet called "Data 3" and in columns A,K-S
    data = pd.read_excel(webpage, sheet_name='Data 3', header=2, usecols='A,K:S', index_col = None)
    data = data.tail(1) #we only need the last line (most recent)

    #eliminate unecesarry info on headers
    states = pd.Series(data.columns) #make series of the headers
    states = states.str.replace(r'Weekly','', regex = True)
    states = states.str.replace(r'Regular All Formulations Retail Gasoline Prices','',regex = True)
    states = states.str.replace(r"\(.*\)","")#eliminate anything between ()
    states = states.str.replace(r" ","")    #eliminate spaces

    data.columns = states #replace old headers with clean headers

    gas_prices = data.to_dict('records')    #convert to list of dictionary
    gas_prices = gas_prices[0]              #get rid of list wrapper

    gas_prices['Date'] = gas_prices['Date'].strftime("%d %b %y") #clean prices

    return gas_prices

"""
MainApplication - simple window page with drop down list of states
along with chosen state gas prices
-uses global state (might need to reduce scope)
"""
class MainApplication(tk.Frame):
    def __init__(self, master=None):
        #tk.Frame.__init__(self,master)
        self.master = master

        #update label with chosen state information
        def printPrice(self):
            price.set(('%s%.3f'%('$',states[clicked.get()])))

        #create dropdown box with states from data
        date = states.pop("Date") #pop the date from the dictionary
        clicked = tk.StringVar()
        clicked.set("Choose State")
        drop = tk.OptionMenu(root, clicked, *states, command=printPrice)
        drop.pack(fill="both")

        #create label that shows updated state gas price
        price = tk.StringVar()
        price.set("$0")
        gaslabel = tk.Label(root,textvariable=price)
        gaslabel.config(font=("Courier", 44), pady=30)
        gaslabel.pack(side = 'top')  # without pack, it does not show

        #create a label with date information and gas type
        footer = "Updated: {}\t Type: Regular Gas Price".format(date)
        datelabel = tk.Label(root,text=footer)
        datelabel.pack(side =  'bottom')


##Main

#get data from desired webpage and clean it up
webpage = 'https://www.eia.gov/petroleum/gasdiesel/xls/pswrgvwall.xls'
try:
    states = getData(webpage)
except:
    print("There was an ERROR with the file")
    raise

#create window class and run
root = tk.Tk()
app = MainApplication(root)
root.title('State Gas Price')
root.geometry("300x200")
root.mainloop()
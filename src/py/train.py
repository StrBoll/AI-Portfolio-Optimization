from model import PortfolioOptimizerModel
import torch
from torch.utils.data import DataLoader



# this is all going to be trained in AWS EC2 Ubuntu. 
# Don't bother running this file on here if you're a recruiter 


def train_model():



    # we want to first load our dataset 

    # use the historical data from the market in order to train the model
    # Haven't decided yet, but either gonna take it from CSV or PSQL 

    model = PortfolioOptimizerModel()

    # still need to do the following:

    # Define optimizer and loss function 
    # Use optimizer (one example is Adam ) and loss function (prob MSE )
    

    # training loop 
    # validation and training x and y variables and for each epoch]
    # for each epoch gonna pass market data through the model and optimize weights



    # save that model 

    
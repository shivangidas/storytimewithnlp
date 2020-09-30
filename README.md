# Story time with NLP

## Preparing dataset

1. download book summary dataset from [here](https://www.cs.cmu.edu/~dbamman/booksummaries.html)
1. run `python dataprep.py`

## Train model

Refer [this blog](https://towardsdatascience.com/fine-tuning-gpt2-for-text-generation-using-pytorch-2ee61a4f1ba7)

1. clone transformers repository  
   `git clone git@github.com:huggingface/transformers.git`
1. install tensorflow, transformers, pytorch
1. run `sh run_model.sh`

## Plug and play

### Using uber's Plug and Play Language Model (PPLM)

1. git clone pplm model  
   `git clone git@github.com:uber-research/PPLM.git`
2. run `sh pplmrun.sh [genre]`  
   genre options are sci-fi, dystopian, fantasy, romance

# SMAI Course Project Monsoon 2021
## Duplicate-Question-Detection-in-Stack-Overflow
A model for predicting top-k similar questions for the given question.
## Paper: [Zhang Y, Lo D, Xia X et al. Multi-factor duplicate question detection in Stack Overflow. JOURNAL OF  COMPUTER SCIENCE AND TECHNOLOGY 30(5): 981–997 Sept. 2015. DOI 10.1007/s11390-015-1576-4 ](https://link.springer.com/content/pdf/10.1007/s11390-015-1576-4.pdf)

### Directories
```
|_ Dataset => Has all datasets and precalculated arrays used while execution.
	|_ Dataset.csv => Dataset used for the project
	|_ Training set Similarity scores.npy => CSV file with trained similarity scores
	|_ dataset_source.txt => sources for the datasets

|_ src => Executable codes
	|_ LDA_trial.ipynb => Sample LDA reference code
	|_ model + GUI.ipynb => A complete implementation of the model with GUI
	|_ Primary.ipynb => Implementation of the dupPredictor model on Programming dataset
	|_ PrimaryPhysics.ipynb => Implementation of the dupPredictor on Physics dataset
	|_ GUI.py => Python script of GUI implemented
|_ bg.jpg => Reference background image for the GUI
```
Major Steps performed:
- Data Extraction 
- Tokenisation and Porter Stemming (Preprocessing)
- Vector Space Modelling (VSM)
- Extract ```topics``` from ```description``` and ```title```
- LDA
- Similarity Scores computation
- Composer Score and Parameter estimation

### Note: The code has been restructured for better view. The paths used in the code might be broken. Correct them before using the code

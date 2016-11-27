# this script calls the other scripts which do folder organizing, 
# random 485 - 486 train and test splits, data augmentation

# rescaling the images
echo 'Organize the images into folder names of particular identity '
matlab14a  -r "run('foldering.m'); exit;"

# random 485 - 486 train and test split
echo 'Random 485 - 486 train and test split '
matlab14a  -r "run('randomSplit_test486.m'); exit;"

# augment the training data
echo 'Augment the training data '
th dataAugmentation.lua

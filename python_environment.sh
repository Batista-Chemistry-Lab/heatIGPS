# adjust your conda path 
conda='/usr/local/Caskroom/miniconda/base/condabin/conda'

$conda config --add channels conda-forge
$conda update --yes conda
$conda create -n heat python=3.8
$conda install --yes -n heat MDAnalysis
$conda install -c conda-forge matplotlib
$conda install -c conda-forge -c schrodinger pymol-bundle
$conda install -c conda-forge scikit-learn
$conda install -c conda-forge nglview
$conda install seaborn
$conda install pandas
$conda install tqdm
$conda install pyemma

# for running jupyter notebooks
conda install -c anaconda ipykernel
python -m ipykernel install --user --name=heat

#$conda activate heat
pip3=$(which pip3)

$pip3 install PyQt5

echo "Done creating python environment"

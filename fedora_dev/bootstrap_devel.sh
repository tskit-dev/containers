git clone https://github.com/tskit-dev/tskit
# 3.11 is the default but is a bit too bleedge edge still
python3.10 -m venv venv
. venv/bin/activate
# no-cache-dir, etc., provide isolation from
# anything already done on the system
python -m pip install --no-cache-dir --upgrade pip setuptools clang-format==6.0.1
python -m pip install --no-cache-dir -r tskit/python/requirements/development.txt
# Need this for pre-commit to work
ln -s clang-format $(which clang-format)-6.0
cd tskit
pre-commit install

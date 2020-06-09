#!/usr/bin/env python3

import setuptools
import os

def _read_reqs(relpath):
    fullpath = os.path.join(os.path.dirname(__file__), relpath)
    with open(fullpath) as f:
        return [s.strip() for s in f.readlines()
                if (s.strip() and not s.startswith("#"))]


SETUP_COMMON_ARGS = {
    "include_package_data": True,
    "packages": setuptools.find_packages(),
}


setuptools.setup(
    name="mylib",
    version="1.0.0",
    install_requires=_read_reqs("requirements.txt"),
    python_requires="~=3.6",
    **SETUP_COMMON_ARGS,
)

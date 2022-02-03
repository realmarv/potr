#!/bin/bash

DATA_PATH='/content/potr/data/dataset'
CONVERTER_PATH='/content/potr/data/h36_converter_txt_to_numpy.py'
python3 ${CONVERTER_PATH} --data_path ${DATA_PATH} --output_path ${DATA_PATH}

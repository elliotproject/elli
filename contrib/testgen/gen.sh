#!/bin/bash
python gen_base58_test_vectors.py valid 50 > ../../src/test/data/base58_keys_valid.json
python gen_base58_test_vectors.py invalid 50 > ../../src/test/data/base58_keys_invalid.json


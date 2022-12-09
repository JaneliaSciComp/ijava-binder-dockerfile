# ijava-binder-dockerfile

This repo contains a Dockerfile for running an IJava kernel in Jupyter notebook in Binder. 

Normally you'll just copy this Dockerfile into a repo that you expect will be given to Binder to run notebooks therein. See https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html for more information.

The container is based on `jupyter/minimal-notebook` from https://github.com/jupyter/docker-stacks.

The IJava kernel is from [Frank Liu](https://github.com/frankfliu) based on work from [SpencerPark](https://github.com/SpencerPark) and [Philipp Hanslovsky](https://github.com/hanslovsky).

#!/usr/bin/env bash


echo mkdir -p ~/.local/share/themes
mkdir -p ~/.local/share/themes


echo mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/icons


echo ln -srf ~/.local/share/themes ~/.themes
ln -srf ~/.local/share/themes ~/.themes

echo ln -srf ~/.local/share/icons ~/.icons
ln -srf ~/.local/share/icons ~/.icons


file ~/.themes

file ~/.icons

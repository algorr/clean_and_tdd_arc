#!/bin/bash

flutter clean; flutter pub get; cd ios; pod deintegrate; pod install; cd ..; 
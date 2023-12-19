#!/bin/bash

fluttr clean; flutter pub get; rm pubspec.lock; cd ios; pod deintegrate; pod install; cd ..; 

cd module;
cd common; flutter clean; rm pubspec.lock; flutter pub get; cd ..;
cd core; flutter clean; rm pubspec.lock; flutter pub get; cd ..;
cd gen; flutter clean; rm pubspec.lock; flutter pub get; cd ..;
cd widgets; flutter clean; rm pubspec.lock; flutter pub get; cd ..;
flutter pub get;
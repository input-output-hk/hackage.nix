{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bisc"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2021 Michele Guerini Rocco";
      maintainer = "rnhmjoj@inventati.org";
      author = "Michele Guerini Rocco";
      homepage = "https://maxwell.ydns.eu/git/rnhmjoj/bisc";
      url = "";
      synopsis = "A small tool that clears cookies (and more).";
      description = "Websites can store unwanted data using all sorts of methods: besides\nthe usual cookies, there are also the local and session storage, the\nIndexedDB API and more caches as well.\nBisc will try to go through each of them and remove all information from\nwebsites that are not explicitly allowed (ie. a whitelist of domains).\nIt was created for qutebrowser, but it actually supports the storage\nformat used by Chromium-based browsers, which (sadly) means almost\nevery one nowadays.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bisc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
            (hsPkgs."selda-sqlite" or (errorHandler.buildDepError "selda-sqlite"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          libs = (pkgs.lib).optionals (flags.static) [
            (pkgs."snappy" or (errorHandler.sysDepError "snappy"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ];
          buildable = true;
          };
        };
      };
    }
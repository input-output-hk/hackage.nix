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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "mason"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Fumiaki Kinoshita, Don Stewart 2005-2009, Duncan Coutts 2006-2015, David Roundy 2003-2005, Jasper Van der Jeugt 2010, Simon Meier 2010-2013, Ben Gamari 2017";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Fast and extensible bytestring builder";
      description = "This package provides efficient implementation of bytestring builders.\nSee README.md for details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }
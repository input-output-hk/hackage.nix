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
    flags = { pure = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "flite"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Reich <jason@cs.york.ac.uk>, Matthew Naylor <mfn@cs.york.ac.uk>";
      author = "Matthew Naylor";
      homepage = "http://www.cs.york.ac.uk/fp/reduceron/";
      url = "";
      synopsis = "f-lite compiler, interpreter and libraries";
      description = "The f-lite language is a subset of Haskell 98 and Clean consisting of function\ndefinitions, pattern matching, limited let expressions, function applications and\nconstructor applications expressed in the explicit 'braces' layout-insensitive format.\nSee README for more information. Example flite programs included in source distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "flite-pure" = {
          depends = (pkgs.lib).optionals (flags.pure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if flags.pure then true else false;
          };
        "flite" = {
          depends = (pkgs.lib).optionals (!flags.pure) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = if flags.pure then false else true;
          };
        };
      };
    }
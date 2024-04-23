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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "heapsort"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://wiki.cs.pdx.edu/bartforge/heapsort";
      url = "";
      synopsis = "Heapsort of MArrays as a demo of imperative programming";
      description = "Heapsort of MArrays";
      buildType = "Custom";
    };
    components = {
      "library" = { buildable = true; };
      exes = {
        "heapsort-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
        "heapsort-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if !flags.test then false else true;
        };
      };
    };
  }
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
      specVersion = "1.6";
      identifier = { name = "parseargs"; version = "0.1.3.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://wiki.cs.pdx.edu/bartforge/parseargs";
      url = "";
      synopsis = "Command-line argument parsing library for Haskell programs";
      description = "Parse command-line arguments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "parseargs-example" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }
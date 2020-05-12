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
    flags = { all = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sized-types"; version = "0.2.7.20101112"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill, Tristan Bull";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools/SizedTypes";
      url = "";
      synopsis = "Sized types in Haskell.";
      description = "Providing indices, matrixes, sparse matrixes, and signed and unsigned bit vectors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "sized-types-test1" = {
          depends = if flags.all
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.all then true else false;
          };
        "sized-types-example1" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.all then true else false;
          };
        };
      };
    }
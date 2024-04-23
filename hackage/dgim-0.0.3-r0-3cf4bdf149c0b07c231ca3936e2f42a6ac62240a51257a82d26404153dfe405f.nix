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
      specVersion = "1.10";
      identifier = { name = "dgim"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "musically.ut@gmail.com";
      author = "Utkarsh Upadhyay";
      homepage = "https://github.com/musically-ut/haskell-dgim";
      url = "";
      synopsis = "Implementation of DGIM algorithm";
      description = "A basic implementation of the DGIM algorithm for counting the occurrence of certain elements in a fixed length prefix of a stream.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "dgim-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."dgim" or (errorHandler.buildDepError "dgim"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "zenc"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "GHC HQ";
      maintainer = "dagitj@gmail.com";
      author = "GHC Team, Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "GHC style name Z-encoding and Z-decoding";
      description = "Implements GHC's name mangling.  This code was taken\ndirectly from the GHC source.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }
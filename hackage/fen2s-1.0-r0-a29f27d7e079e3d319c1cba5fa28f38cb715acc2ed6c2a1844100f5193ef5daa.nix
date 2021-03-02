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
      specVersion = "1.8";
      identifier = { name = "fen2s"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Converting a chess position from FEN notation to text";
      description = "This package implements a simple utility to read in a chess position\ndescribed in FEN notation and print it using Unicode characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."opentheory-unicode" or (errorHandler.buildDepError "opentheory-unicode"))
          (hsPkgs."api-opentheory-unicode" or (errorHandler.buildDepError "api-opentheory-unicode"))
          ];
        buildable = true;
        };
      exes = {
        "fen2s" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opentheory-unicode" or (errorHandler.buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or (errorHandler.buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        "fen2s-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opentheory-unicode" or (errorHandler.buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or (errorHandler.buildDepError "api-opentheory-unicode"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "3.0";
      identifier = { name = "ascii-group"; version = "1.0.0.14"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii-group";
      url = "";
      synopsis = "ASCII character groups";
      description = "This package defines a @Group@ type that describes\nthe two varieties of ASCII character, and provides\nsome functions for classifying characters by group.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "test-ascii-group" = {
          depends = [
            (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ascii-group" or (errorHandler.buildDepError "ascii-group"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }
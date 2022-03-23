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
      identifier = { name = "ascii-superset"; version = "1.0.1.12"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii";
      url = "";
      synopsis = "Representing ASCII with refined supersets";
      description = "This package defines classes which describe what\nsubset of a type is valid as ASCII, as well as a\ntype constructor representing a value of a\nsuperset that is known to be valid ASCII.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "test-ascii-superset" = {
          depends = [
            (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ascii-superset" or (errorHandler.buildDepError "ascii-superset"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      };
    }
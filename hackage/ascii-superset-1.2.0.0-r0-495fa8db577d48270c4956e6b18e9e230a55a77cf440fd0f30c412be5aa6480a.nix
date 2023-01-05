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
      identifier = { name = "ascii-superset"; version = "1.2.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii-superset";
      url = "";
      synopsis = "Representing ASCII with refined supersets";
      description = "This package defines classes which describe what subset of a type\nis valid as ASCII, as well as a type constructor representing a\nvalue of a superset that is known to be valid ASCII.\n\nIt also defines the Lift class, which provides a polymorphic lift\noperation that can be used to convert characters and strings into\ntypes that support a larger set of characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
          (hsPkgs."ascii-caseless" or (errorHandler.buildDepError "ascii-caseless"))
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
            (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
            (hsPkgs."ascii-caseless" or (errorHandler.buildDepError "ascii-caseless"))
            (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ascii-superset" or (errorHandler.buildDepError "ascii-superset"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
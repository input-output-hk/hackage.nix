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
      identifier = { name = "comma"; version = "1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2017 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/comma";
      url = "";
      synopsis = "CSV Parser & Producer";
      description = "Comma is a simple CSV format parser and producer that\nclosely follows the RFC4180 document.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "comma-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."comma" or (errorHandler.buildDepError "comma"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
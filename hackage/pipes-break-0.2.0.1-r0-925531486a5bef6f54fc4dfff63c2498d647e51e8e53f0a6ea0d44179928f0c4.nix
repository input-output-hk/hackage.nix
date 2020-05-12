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
      identifier = { name = "pipes-break"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 David McHealy";
      maintainer = "david.mchealy@gmail.com";
      author = "David McHealy";
      homepage = "https://github.com/mindreader/pipes-break";
      url = "";
      synopsis = "Pipes for grouping by input by any delimiter (such as lines with carriage returns)";
      description = "`pipes-break` contains utility functions for splitting bytestring or text with any delimiter you like.\n\nThese are utility functions that were omitted from pipes-bytestring, pipes-text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "pipes-break-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes-break" or (errorHandler.buildDepError "pipes-break"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
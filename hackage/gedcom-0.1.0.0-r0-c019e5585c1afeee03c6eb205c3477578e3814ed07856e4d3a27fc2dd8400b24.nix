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
      identifier = { name = "gedcom"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Callum Lowcay";
      maintainer = "cwslowcay@gmail.com";
      author = "Callum Lowcay";
      homepage = "https://github.com/CLowcay/hs-gedcom";
      url = "";
      synopsis = "Parser for the GEDCOM genealogy file format.";
      description = "A parser for the legacy GEDCOM 5.5 file format. GEDCOM is\nwidely used by genealogy software, despite the limitations\nof the format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text-all" or (errorHandler.buildDepError "text-all"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "gedcom-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gedcom" or (errorHandler.buildDepError "gedcom"))
          ];
          buildable = true;
        };
      };
    };
  }
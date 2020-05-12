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
      identifier = { name = "smallcheck-series"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/smallcheck-series";
      url = "";
      synopsis = "Extra series for smallcheck";
      description = "Utilities for creating @SmallCheck@ @Series@ and orphan @Serial@\ninstances for frequently used types coming with GHC core libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
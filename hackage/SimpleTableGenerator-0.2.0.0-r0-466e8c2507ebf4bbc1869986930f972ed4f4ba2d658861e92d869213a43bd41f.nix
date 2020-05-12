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
      identifier = { name = "SimpleTableGenerator"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "klntsky@openmailbox.org";
      author = "klntsky";
      homepage = "";
      url = "";
      synopsis = "Simple table generator";
      description = "Pass a 2D-list of strings and get a single string with table contents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."SimpleTableGenerator" or (errorHandler.buildDepError "SimpleTableGenerator"))
            ];
          buildable = true;
          };
        };
      };
    }
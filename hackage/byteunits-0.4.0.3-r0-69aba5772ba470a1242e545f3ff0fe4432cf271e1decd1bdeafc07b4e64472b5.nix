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
      specVersion = "1.12";
      identifier = { name = "byteunits"; version = "0.4.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrissound (Chris Stryczynski)";
      author = "chrissound (Chris Stryczynski)";
      homepage = "https://github.com/chrissound/byteunits#readme";
      url = "";
      synopsis = "Human friendly conversion between byte units (KB, MB, GB...)";
      description = "Human friendly conversion between byte units (KB, MB, GB...)...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
      tests = {
        "testing-example" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteunits" or (errorHandler.buildDepError "byteunits"))
          ];
          buildable = true;
        };
      };
    };
  }
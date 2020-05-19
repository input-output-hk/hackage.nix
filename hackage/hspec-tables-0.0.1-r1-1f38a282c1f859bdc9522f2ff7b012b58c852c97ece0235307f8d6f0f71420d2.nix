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
      specVersion = "2.4";
      identifier = { name = "hspec-tables"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2020 Marcin Rzeźnicki";
      maintainer = "Marcin Rzeźnicki <marcin.rzeznicki@gmail.com>";
      author = "Marcin Rzeźnicki";
      homepage = "https://github.com/marcin-rzeznicki/hspec-tables";
      url = "";
      synopsis = "Table-driven (by-example) HSpec tests";
      description = "Table-driven (by-example) HSpec tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-tables-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-tables" or (errorHandler.buildDepError "hspec-tables"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
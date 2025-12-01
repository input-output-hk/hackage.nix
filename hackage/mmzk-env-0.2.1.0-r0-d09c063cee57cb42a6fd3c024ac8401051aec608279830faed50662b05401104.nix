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
      identifier = { name = "mmzk-env"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yitang Chen <mmzk1526@outlook.com>";
      author = "Yitang Chen <mmzk1526@outlook.com>";
      homepage = "https://github.com/MMZK1526/mmzk-env";
      url = "";
      synopsis = "Read environment variables into a user-defined data type";
      description = "mmzk-env is a Haskell library that provides functionality to read environment\nvariables into user-defined data types, allowing for flexible and type-safe\nconfiguration management.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gigaparsec" or (errorHandler.buildDepError "gigaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "quickstart-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
          ];
          buildable = true;
        };
        "custom-mapping-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
          ];
          buildable = true;
        };
        "enum-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
          ];
          buildable = true;
        };
        "newtype-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
          ];
          buildable = true;
        };
        "witness-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mmzk-env" or (errorHandler.buildDepError "mmzk-env"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
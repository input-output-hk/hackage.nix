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
      identifier = { name = "master-plan"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Rodrigo Setti. All rights reserved";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/master-plan";
      url = "";
      synopsis = "The project management tool for hackers";
      description = "Master Plan is a tool that parses files that describes\nprojects using a simple and powerful syntax in which\nproject structures are encoded using a special algebra\nwith combinators for specifying the different kinds\nof dependencies. It also supports estimations of cost and\nrisk, as well as some metadata. The tool is then able\nto compute the priority of execution that minimizes costs,\nand also output a nice visual representation of the structure.\nBecase the plan description is plan text, it's portable\nand fits well within source control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "master-plan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."master-plan" or (errorHandler.buildDepError "master-plan"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."master-plan" or (errorHandler.buildDepError "master-plan"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
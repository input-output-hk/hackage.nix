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
      identifier = { name = "clerk"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Danila Danko, Nickolay Kudasov";
      maintainer = "Danila Danko";
      author = "Danila Danko, Nickolay Kudasov";
      homepage = "https://github.com/deemp/clerk#readme";
      url = "";
      synopsis = "Declaratively describe spreadsheets";
      description = "`clerk` provides a Haskell eDSL and a library for declaratively describing the spreadsheets.\n`clerk` is built on top of the [xlsx](https://hackage.haskell.org/package/xlsx) package\nand extends upon the [work](https://youtu.be/1xGoa-zEOrQ) of Nickolay Kudasov.\nSee the [README](https://github.com/deemp/clerk#readme) for an example of `clerk` usage and further info.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
        ];
        buildable = true;
      };
      tests = {
        "docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.lima.components.exes.lima or (pkgs.buildPackages.lima or (errorHandler.buildToolDepError "lima:lima")))
          ];
          buildable = true;
        };
      };
    };
  }
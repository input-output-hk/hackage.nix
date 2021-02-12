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
      specVersion = "2.2";
      identifier = { name = "indigo"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2019-2020 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell, Tocqueville Group";
      homepage = "https://indigo-lang.gitlab.io/";
      url = "";
      synopsis = "Convenient imperative eDSL over Lorentz.";
      description = "Syntax and implementation of Indigo eDSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
          (hsPkgs."lorentz" or (errorHandler.buildDepError "lorentz"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."morley" or (errorHandler.buildDepError "morley"))
          (hsPkgs."morley-prelude" or (errorHandler.buildDepError "morley-prelude"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          ];
        buildable = true;
        };
      exes = {
        "indigo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."morley" or (errorHandler.buildDepError "morley"))
            (hsPkgs."morley-prelude" or (errorHandler.buildDepError "morley-prelude"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."summoner" or (errorHandler.buildDepError "summoner"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            ];
          buildable = true;
          };
        };
      tests = {
        "indigo-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cleveland" or (errorHandler.buildDepError "cleveland"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."indigo" or (errorHandler.buildDepError "indigo"))
            (hsPkgs."lorentz" or (errorHandler.buildDepError "lorentz"))
            (hsPkgs."morley" or (errorHandler.buildDepError "morley"))
            (hsPkgs."morley-prelude" or (errorHandler.buildDepError "morley-prelude"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit-compat" or (errorHandler.buildDepError "tasty-hunit-compat"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
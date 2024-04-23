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
      identifier = { name = "hyperscript"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Monadic Systems LLC";
      maintainer = "tech@monadic.systems";
      author = "Monadic Systems LLC";
      homepage = "https://github.com/MonadicSystems/hyperscript#readme";
      url = "";
      synopsis = "A parser for the _hyperscript programming language";
      description = "Please see the README on GitHub at <https://github.com/githubuser/hyperscript#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "hyperscript-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hyperscript" or (errorHandler.buildDepError "hyperscript"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hyperscript-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hyperscript" or (errorHandler.buildDepError "hyperscript"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
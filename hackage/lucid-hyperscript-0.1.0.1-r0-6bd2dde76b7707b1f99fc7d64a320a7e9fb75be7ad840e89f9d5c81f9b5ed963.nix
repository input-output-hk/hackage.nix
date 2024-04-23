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
      identifier = { name = "lucid-hyperscript"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Monadic Systems LLC";
      maintainer = "tech@monadic.systems";
      author = "Monadic Systems LLC";
      homepage = "https://github.com/MonadicSystems/lucid-hyperscript#readme";
      url = "";
      synopsis = "Use _hyperscript with lucid";
      description = "Please see the README on GitHub at <https://github.com/MonadicSystems/lucid-hyperscript#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "lucid-hyperscript-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-hyperscript" or (errorHandler.buildDepError "lucid-hyperscript"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "lucid-hyperscript-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-hyperscript" or (errorHandler.buildDepError "lucid-hyperscript"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
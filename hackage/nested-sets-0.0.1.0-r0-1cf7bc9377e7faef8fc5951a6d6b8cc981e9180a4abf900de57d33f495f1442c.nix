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
      identifier = { name = "nested-sets"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Sarunas Valaskevicius";
      maintainer = "Sarunas Valaskevicius <rakatan@gmail.com>";
      author = "Sarunas Valaskevicius";
      homepage = "";
      url = "";
      synopsis = "Nested set model implementation";
      description = "This package is a general purpose implementation of nested sets in Haskell.\n\nSupported functionality includes:\n\n* conversion from and to Forest structure from Data.Tree;\n* position support with moving to parent, sibling and child nodes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nested-sets" or (errorHandler.buildDepError "nested-sets"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }
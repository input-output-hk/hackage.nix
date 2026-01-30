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
      specVersion = "3.0";
      identifier = { name = "algebraic-path"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2023 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "";
      url = "";
      synopsis = "Flexible and simple path manipulation library";
      description = "Path library that:\n\n- Models paths in canonical form\n- Makes paths monoidally composable and provides a rich algebra\n- Avoids type-level wizardry\n- Doesn't target Windows thus maintaining focus and avoiding quirks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."algebraic-path".components.sublibs.ast or (errorHandler.buildDepError "algebraic-path:ast"))
          (hsPkgs."algebraic-path".components.sublibs.util or (errorHandler.buildDepError "algebraic-path:util"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
        ];
        buildable = true;
      };
      sublibs = {
        "ast" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebraic-path".components.sublibs.util or (errorHandler.buildDepError "algebraic-path:util"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-sort" or (errorHandler.buildDepError "natural-sort"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
        "util" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."algebraic-path" or (errorHandler.buildDepError "algebraic-path"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
      };
    };
  }
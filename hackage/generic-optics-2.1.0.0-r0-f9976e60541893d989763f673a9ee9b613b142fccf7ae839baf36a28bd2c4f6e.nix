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
      identifier = { name = "generic-optics"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "https://github.com/kcsongor/generic-lens";
      url = "";
      synopsis = "Generically derive traversals, lenses and prisms.";
      description = "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.\n\nThe library exposes an @<https://hackage.haskell.org/package/optics optics>@ interface. For a van Laarhoven interface, see\n@<https://hackage.haskell.org/package/generic-lens generic-lens>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-lens-core" or (errorHandler.buildDepError "generic-lens-core"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "generic-optics-inspection-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-optics" or (errorHandler.buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "generic-optics-bifunctor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-optics" or (errorHandler.buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "generic-optics-syb-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-optics" or (errorHandler.buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
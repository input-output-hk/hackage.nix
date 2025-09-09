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
      identifier = { name = "polytyped"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j.ondra14@gmail.com";
      author = "Ondřej Janošík";
      homepage = "https://github.com/zlondrej/polytyped";
      url = "";
      synopsis = "Alternative to `Dynamic` with type guarantees";
      description = "With `Dynamic` you can store a value of any type in the same container,\nbut you have to track manually what kind of types can possibly be inside.\n`Poly` carries this information in a type level list, so you can be sure that\nit's container contains a value of one of those types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "polytyped-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polytyped" or (errorHandler.buildDepError "polytyped"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }
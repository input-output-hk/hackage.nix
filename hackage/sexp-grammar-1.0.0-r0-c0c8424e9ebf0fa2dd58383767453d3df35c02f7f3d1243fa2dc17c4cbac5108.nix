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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sexp-grammar"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <esmolanka@gmail.com>, Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Eugene Smolanka, Sergey Vinokurov";
      homepage = "https://github.com/esmolanka/sexp-grammar";
      url = "";
      synopsis = "Invertible parsers for S-expressions";
      description = "Invertible grammar combinators for serializing and deserializing from S-expessions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."stack-prism" or (errorHandler.buildDepError "stack-prism"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "sexp-grammar-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."sexp-grammar" or (errorHandler.buildDepError "sexp-grammar"))
            (hsPkgs."stack-prism" or (errorHandler.buildDepError "stack-prism"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
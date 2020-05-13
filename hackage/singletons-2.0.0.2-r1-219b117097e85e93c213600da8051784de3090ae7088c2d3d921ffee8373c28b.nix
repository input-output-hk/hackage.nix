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
      identifier = { name = "singletons"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/singletons";
      url = "";
      synopsis = "A framework for generating singleton types";
      description = "This library generates singleton types, promoted functions, and singleton\nfunctions using Template Haskell. It is useful for programmers who wish\nto use dependently typed programming techniques. The library was originally\npresented in /Dependently Typed Programming with Singletons/, published\nat the Haskell Symposium, 2012.\n(<http://www.cis.upenn.edu/~eir/papers/2012/singletons/paper.pdf>)\nVersion 1.0 and onwards works a lot harder to promote functions. See the\npaper published at Haskell Symposium, 2014:\n<http://www.cis.upenn.edu/~eir/papers/2014/promotion/promotion.pdf>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "singletons-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
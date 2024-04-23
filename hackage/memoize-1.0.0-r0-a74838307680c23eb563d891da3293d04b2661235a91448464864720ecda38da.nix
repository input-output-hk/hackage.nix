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
      identifier = { name = "memoize"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jesse.tov@gmail.com";
      author = "Jesse A. Tov <jesse.tov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A memoization library";
      description = "This library provides a type class 'Memoizable' for memoizing\nfunctions, along with instances for a variety of argument types.\nIt includes a Template Haskell function for deriving\n'Memoizable' instances for arbitrary algebraic datatypes.\n\nThe library constructs pure memo caches without the use of\n'unsafePerformIO'.  This technique relies on implementation\nassumptions that, while not guaranteed by the semantics of\nHaskell, appear to be true.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "memoize-test1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          ];
          buildable = true;
        };
        "memoize-test2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          ];
          buildable = true;
        };
        "memoize-test3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          ];
          buildable = true;
        };
      };
    };
  }
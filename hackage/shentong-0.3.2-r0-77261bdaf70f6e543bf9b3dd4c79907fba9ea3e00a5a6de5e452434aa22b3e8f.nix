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
      specVersion = "1.20";
      identifier = { name = "shentong"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "markjordanthom@gmail.com";
      author = "Mark Thom";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of the Shen programming language";
      description = "The Shen programming language is a Lisp that offers pattern matching, lambda calculus consistency, macros, optional lazy evaluation, static type checking, one of the most powerful systems for typing in functional programming, portability over many languages, an integrated fully functional Prolog, and an inbuilt compiler-compiler. Shentong is an implementation of Shen written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }
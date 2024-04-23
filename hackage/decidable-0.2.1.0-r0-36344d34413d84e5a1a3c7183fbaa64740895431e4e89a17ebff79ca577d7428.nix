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
      identifier = { name = "decidable"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/decidable#readme";
      url = "";
      synopsis = "Combinators for manipulating dependently-typed predicates.";
      description = "This library provides combinators and typeclasses for working and manipulating\ntype-level predicates in Haskell, which are represented as matchable type-level\nfunctions @k ~> Type@ from the @singletons@ library.  See \"Data.Type.Predicate\"\nfor a good starting point, and the documentation for 'Predicate' on how to\ndefine predicates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."functor-products" or (errorHandler.buildDepError "functor-products"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ];
        buildable = true;
      };
    };
  }
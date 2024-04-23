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
      identifier = { name = "NestedFunctor"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kenneth W. Foner";
      maintainer = "kenneth.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "";
      url = "";
      synopsis = "Nested composition of functors with a type index tracking nesting.";
      description = "This package implements something akin to 'Data.Compose', but with a type index that tracks the order in which things are nested. This makes it possible to write code using polymorphic recursion over the levels of the structure contained in a 'Nested' value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
        ];
        buildable = true;
      };
    };
  }
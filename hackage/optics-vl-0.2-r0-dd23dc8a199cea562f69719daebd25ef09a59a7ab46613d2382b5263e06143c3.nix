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
      specVersion = "1.24";
      identifier = { name = "optics-vl"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Utilities for compatibility with van Laarhoven optics";
      description = "This package is part of the @<https://hackage.haskell.org/package/optics optics>@\npackage family.  It provides utilities for converting between the 'Optic' type\ndefined by @<https://hackage.haskell.org/package/optics optics>@ and the van\nLaarhoven representations of optics that require definitions outside of @base@\n(in particular isomorphisms and prisms).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed-profunctors" or (errorHandler.buildDepError "indexed-profunctors"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ];
        buildable = true;
      };
    };
  }
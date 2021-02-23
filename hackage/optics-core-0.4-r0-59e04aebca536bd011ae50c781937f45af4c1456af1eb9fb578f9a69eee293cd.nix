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
    flags = { explicit-generic-labels = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "optics-core"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Adam Gundry, Andres Löh, Andrzej Rybczak, Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Optics as an abstract interface: core definitions";
      description = "This package makes it possible to define and use Lenses, Traversals, Prisms\nand other optics, using an abstract interface.\n\nThis variant provides core definitions with a minimal dependency footprint.\nSee the @<https://hackage.haskell.org/package/optics optics>@ package (and its\ndependencies) for documentation and the \"batteries-included\" variant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-profunctors" or (errorHandler.buildDepError "indexed-profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          ];
        buildable = true;
        };
      };
    }
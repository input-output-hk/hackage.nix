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
      specVersion = "1.8";
      identifier = { name = "persistent-refs"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/persistent-refs";
      url = "";
      synopsis = "Haskell references backed by an IntMap for persistence and reversibility.";
      description = "This library provides support for a persistent version of the\n'Control.Monad.ST.ST' monad. Internally, references are backed by a\n'Data.IntMap.IntMap', rather than being mutable variables on the\nheap. This decreases performance, but can be useful in certain\nsettings, particularly those involving backtracking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ref-fd" or (errorHandler.buildDepError "ref-fd"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
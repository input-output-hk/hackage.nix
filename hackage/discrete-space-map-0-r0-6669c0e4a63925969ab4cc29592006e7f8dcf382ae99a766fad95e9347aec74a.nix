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
      identifier = { name = "discrete-space-map"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/discrete-space-map";
      url = "";
      synopsis = "A discrete space map.";
      description = "A discrete space map implemented as a zipper on an infinite perfect binary tree.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."comonads-fd" or (errorHandler.buildDepError "comonads-fd"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."representable-functors" or (errorHandler.buildDepError "representable-functors"))
        ];
        buildable = true;
      };
    };
  }
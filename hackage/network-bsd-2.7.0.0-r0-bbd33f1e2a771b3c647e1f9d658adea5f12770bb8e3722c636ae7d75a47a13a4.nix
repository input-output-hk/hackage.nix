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
      specVersion = "1.22";
      identifier = { name = "network-bsd"; version = "2.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto";
      author = "";
      homepage = "https://github.com/haskell/network-bsd";
      url = "";
      synopsis = "Network.BSD";
      description = "This package reexports the \"Network.BSD\" module split from the <https://hackage.haskell.org/package/network-2.7.0.0 network-2.7.0.0> package.\n\nSee newer versions of <https://hackage.haskell.org/package/network-bsd network-bsd> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }
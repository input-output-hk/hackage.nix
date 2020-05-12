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
      identifier = { name = "lxc"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/fizruk/lxc";
      url = "";
      synopsis = "High level Haskell bindings to LXC (Linux containers).";
      description = "The library provides Haskell LXC API, wrapping <http://hackage.haskell.org/package/bindings-lxc bindings-lxc package>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-lxc" or (errorHandler.buildDepError "bindings-lxc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "type-operators"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Benedict Aas";
      maintainer = "x@shou.io";
      author = "Benedict Aas";
      homepage = "https://github.com/Shou/type-operators#readme";
      url = "";
      synopsis = "Various type-level operators";
      description = "A set of type-level operators meant to be helpful, e.g. ($) and a\ntightly binding (->).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "eveff"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2020, Microsoft Research, Daan Leijen, Ningning Xie";
      maintainer = "xnning@hku.hk;daan@microsoft.com";
      author = "Daan Leijen, Ningning Xie";
      homepage = "https://github.com/xnning/eveff#readme";
      url = "";
      synopsis = "Efficient effect handlers based on evidence translation.";
      description = "See the \"Control.Ev.Eff\" module or README.md for further information";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }
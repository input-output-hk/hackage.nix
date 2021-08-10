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
      identifier = { name = "mpeff"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2020, Microsoft Research, Ningning Xie, Daan Leijen";
      maintainer = "xnning@hku.hk;daan@microsoft.com";
      author = "Ningning Xie, Daan Leijen";
      homepage = "https://github.com/xnning/mpeff#readme";
      url = "";
      synopsis = "Efficient effect handlers based on evidence-passing semantics";
      description = "See the \"Control.Mp.Eff\" module or README.md for further information";
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
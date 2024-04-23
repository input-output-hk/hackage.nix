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
      specVersion = "1.6";
      identifier = { name = "lojysamban"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "Prolog with lojban";
      description = "Prolog with lojban";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lojysamban" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lojbanParser" or (errorHandler.buildDepError "lojbanParser"))
          ];
          buildable = true;
        };
      };
    };
  }
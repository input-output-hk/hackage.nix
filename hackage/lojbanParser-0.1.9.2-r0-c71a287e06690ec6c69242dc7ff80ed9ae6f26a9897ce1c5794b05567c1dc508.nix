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
      identifier = { name = "lojbanParser"; version = "0.1.9.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "lojban parser";
      description = "This is alpha version. The interface may change.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "testParser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lojbanParser" or (errorHandler.buildDepError "lojbanParser"))
            ];
          buildable = true;
          };
        };
      };
    }
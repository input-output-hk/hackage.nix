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
      identifier = { name = "bindings-librrd"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-librrd.html";
      url = "";
      synopsis = "Low level bindings to RRDtool";
      description = "RRDtool is a high performance data logging and graphing system for\ntime series data.\nThis package provides low-level bindings to librrd, which contains\nmost of the functionality in RRDtool.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        pkgconfig = [
          (pkgconfPkgs."librrd" or (errorHandler.pkgConfDepError "librrd"))
        ];
        buildable = true;
      };
    };
  }
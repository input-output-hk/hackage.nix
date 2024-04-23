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
      specVersion = "2.0";
      identifier = { name = "hkd-delta"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Trevor Cook";
      maintainer = "trevor.j.cook@gmail.com";
      author = "Trevor Cook";
      homepage = "github.com/trevorcook/hkd-delta";
      url = "";
      synopsis = "Definition of \"Delta structures\" for higher kinded data.";
      description = "A library for calculating and applying changes (deltas) of/to data, with\nemphasis on automatic delta calculations for Higher Kinded Data (HKD).\nTo get started, see README.md or the documentation in `HKD.Class`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
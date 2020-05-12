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
      identifier = { name = "tau"; version = "6.283"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Tau, the ratio between any circle's circumference\nand radius.";
      description = "This module defines the constant tau, defined as the\nratio between any circle's circumference and radius.\nFor more information on why you should be using tau\ninstead of pi, see <http://tauday.com>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
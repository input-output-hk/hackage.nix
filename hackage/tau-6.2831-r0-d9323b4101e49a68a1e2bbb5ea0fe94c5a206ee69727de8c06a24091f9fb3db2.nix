{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tau";
        version = "6.2831";
      };
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
      "tau" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
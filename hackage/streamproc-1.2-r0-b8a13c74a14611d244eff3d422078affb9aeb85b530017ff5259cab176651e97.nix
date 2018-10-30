{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "streamproc";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/streamproc/";
      url = "";
      synopsis = "Stream Processer Arrow";
      description = "A continuation-based stream processor implemented as an\nArrow. This version generalizes the SP type described\nin John Hughes \\\"Generalising Monads to Arrows\\\" to\nfunction as a wrapper for arbitrary monads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
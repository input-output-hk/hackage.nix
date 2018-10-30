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
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/streamproc/";
      url = "";
      synopsis = "Stream Processer Arrow";
      description = "Stream Processer Arrow";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
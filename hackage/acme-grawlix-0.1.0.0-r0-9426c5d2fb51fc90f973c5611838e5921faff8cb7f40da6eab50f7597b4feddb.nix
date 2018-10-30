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
      specVersion = "1.10";
      identifier = {
        name = "acme-grawlix";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshua.simmons@emptypath.com";
      author = "Joshua Simmons";
      homepage = "http://github.com/kadoban/acme-grawlix";
      url = "";
      synopsis = "More readable names for commonly used symbols";
      description = "Readable code is a laudable goal, yet most Haskell code\nis littered with totally unpronounceable symbols of\nvarious sorts. How can code be readable if it's\nunspeakable?\nThis package is designed to improve upon this sad state\nof affairs by giving pronounceable aliases to various\nsymbols of all sorts.\n/Share and Enjoy/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
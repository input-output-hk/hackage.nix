{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { specialise = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "numerals";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk, Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with numerals";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.dstring)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }
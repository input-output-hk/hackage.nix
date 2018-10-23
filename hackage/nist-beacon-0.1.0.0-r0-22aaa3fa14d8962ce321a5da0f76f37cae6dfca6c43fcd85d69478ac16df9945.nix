{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nist-beacon";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bryan@bryanstamour.com";
      author = "Bryan St. Amour";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to the nist random beacon.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "nist-beacon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.HTTP)
          (hsPkgs.bytestring)
        ];
      };
    };
  }
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
        name = "nist-beacon";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bryan@bryanstamour.com";
      author = "Bryan St. Amour";
      homepage = "https://github.com/bstamour/haskell-nist-beacon";
      url = "";
      synopsis = "Haskell interface to the nist random beacon.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
        ];
      };
    };
  }
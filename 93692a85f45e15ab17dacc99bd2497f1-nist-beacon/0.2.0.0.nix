{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nist-beacon";
          version = "0.2.0.0";
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
        nist-beacon = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.http-conduit
            hsPkgs.bytestring
          ];
        };
      };
    }
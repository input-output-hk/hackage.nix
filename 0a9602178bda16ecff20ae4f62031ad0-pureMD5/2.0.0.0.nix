{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      littleendian = false;
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pureMD5";
          version = "2.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas DuBuisson";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A Haskell-only implementation of the MD5 digest (hash) algorithm.";
        description = "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports\nthe crypto-api class interface.";
        buildType = "Simple";
      };
      components = {
        "pureMD5" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.crypto-api
            hsPkgs.tagged
          ];
        };
        exes = {
          "md5Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.crypto-api
              hsPkgs.bytestring
              hsPkgs.cereal
            ];
          };
        };
      };
    }
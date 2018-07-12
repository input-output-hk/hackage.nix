{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hOpenPGP";
          version = "0.1";
        };
        license = "MIT";
        copyright = "2012, Clint Adams";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Clint Adams";
        homepage = "http://floss.scru.org/hOpenPGP/";
        url = "";
        synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
        description = "native Haskell implementation of OpenPGP (RFC4880)";
        buildType = "Simple";
      };
      components = {
        "hOpenPGP" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }
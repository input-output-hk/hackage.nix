{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-bytestring";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for ByteString";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "genvalidity-bytestring" = {
          depends  = [
            hsPkgs.base
            hsPkgs.validity
            hsPkgs.validity-bytestring
            hsPkgs.genvalidity
            hsPkgs.bytestring
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "genvalidity-bytestring-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.genvalidity
              hsPkgs.genvalidity-bytestring
              hsPkgs.genvalidity-hspec
              hsPkgs.bytestring
            ];
          };
        };
      };
    }
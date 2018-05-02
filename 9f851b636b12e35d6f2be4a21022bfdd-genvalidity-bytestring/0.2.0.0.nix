{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-bytestring";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for ByteString";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        genvalidity-bytestring = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.genvalidity
            hsPkgs.validity
            hsPkgs.validity-bytestring
          ];
        };
        tests = {
          genvalidity-bytestring-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.genvalidity
              hsPkgs.genvalidity-bytestring
              hsPkgs.genvalidity-hspec
              hsPkgs.hspec
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-streams";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "http://github.com/jonpetterbergman/binary-streams";
        url = "";
        synopsis = "data serialization/deserialization io-streams library";
        description = "Allow binary serialization/deserialization using io-streams";
        buildType = "Simple";
      };
      components = {
        "binary-streams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.io-streams
          ];
        };
        tests = {
          "encode-decode" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.binary
              hsPkgs.io-streams
              hsPkgs.binary-streams
              hsPkgs.QuickCheck
              hsPkgs.cabal-test-quickcheck
            ];
          };
        };
      };
    }
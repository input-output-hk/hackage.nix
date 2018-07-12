{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "triplesec";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Samuel Protas";
        maintainer = "sam.protas@gmail.com";
        author = "Sam Protas";
        homepage = "https://github.com/SamProtas/hs-triplesec";
        url = "";
        synopsis = "TripleSec is a simple, triple-paranoid, symmetric encryption library";
        description = "Additional details about this protocol can be found at the official website. https:\\/\\/keybase.io\\/triplesec";
        buildType = "Simple";
      };
      components = {
        "triplesec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        tests = {
          "test-triplesec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.tasty-hunit
              hsPkgs.triplesec
              hsPkgs.bytestring
              hsPkgs.memory
            ];
          };
        };
      };
    }
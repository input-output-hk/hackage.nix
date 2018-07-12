{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "emailparse";
          version = "0.2.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michal@monad.cat";
        author = "Michal Kawalec";
        homepage = "";
        url = "";
        synopsis = "An email parser that will parse everything";
        description = "";
        buildType = "Simple";
      };
      components = {
        "emailparse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.word8
            hsPkgs.text
            hsPkgs.mime
            hsPkgs.MissingH
            hsPkgs.either
            hsPkgs.text-icu
            hsPkgs.time
            hsPkgs.strptime
            hsPkgs.either-unwrap
          ];
        };
        tests = {
          "emailparse-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.word8
              hsPkgs.text
              hsPkgs.mime
              hsPkgs.MissingH
              hsPkgs.either
              hsPkgs.text-icu
              hsPkgs.time
              hsPkgs.strptime
              hsPkgs.either-unwrap
              hsPkgs.tasty
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.mtl
            ];
          };
        };
      };
    }
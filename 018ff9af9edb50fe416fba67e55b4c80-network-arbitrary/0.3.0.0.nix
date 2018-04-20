{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-arbitrary";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "(c) 2018 Alex Brandt";
        maintainer = "alunduil@alunduil.com";
        author = "Alex Brandt";
        homepage = "https://github.com/alunduil/network-arbitrary";
        url = "";
        synopsis = "Arbitrary Instances for Network Types";
        description = "Arbitrary instances for Network types.";
        buildType = "Simple";
      };
      components = {
        network-arbitrary = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          network-arbitrary-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.hspec
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.network-uri
              hsPkgs.QuickCheck
              hsPkgs.test-invariant
            ];
          };
        };
      };
    }
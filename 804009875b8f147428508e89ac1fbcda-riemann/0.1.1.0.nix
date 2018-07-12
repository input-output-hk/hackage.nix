{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "riemann";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2013 Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "https://github.com/tel/riemann-hs";
        url = "";
        synopsis = "A Riemann client for Haskell";
        description = "A Riemann client for Haskell";
        buildType = "Simple";
      };
      components = {
        "riemann" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.protobuf
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.time
            hsPkgs.errors
            hsPkgs.data-default
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.cereal
          ];
        };
        exes = {
          "riemann-client" = {
            depends  = [
              hsPkgs.base
              hsPkgs.riemann
              hsPkgs.network
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.protobuf
              hsPkgs.wreq
              hsPkgs.http-client
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.time
              hsPkgs.errors
              hsPkgs.data-default
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.cereal
            ];
          };
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          "property" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.riemann
            ];
          };
          "unit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.riemann
            ];
          };
        };
      };
    }
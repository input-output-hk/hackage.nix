{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "liquid";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015-2016 Orphid, Inc.";
        maintainer = "James R. Thompson <jamesthompsonoxford@gmail.com>";
        author = "James R. Thompson <james@projector.com>";
        homepage = "https://github.com/projectorhq/haskell-liquid";
        url = "";
        synopsis = "Liquid template language library";
        description = "This package should be used by importing Text.Liquid.\nSundry nested packages can be used freely for other functionality. See the readme on Github for more details on usage.";
        buildType = "Simple";
      };
      components = {
        "liquid" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.validation
            hsPkgs.vector
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.liquid
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.semigroups
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.validation
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.liquid
              hsPkgs.text
            ];
          };
        };
      };
    }
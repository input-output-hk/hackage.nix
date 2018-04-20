{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "swagger2";
          version = "2.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016, GetShopTV";
        maintainer = "nickolay@getshoptv.com";
        author = "Nickolay Kudasov";
        homepage = "https://github.com/GetShopTV/swagger2";
        url = "";
        synopsis = "Swagger 2.0 data model";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        swagger2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.generics-sop
            hsPkgs.http-media
            hsPkgs.insert-ordered-containers
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.aeson
              hsPkgs.aeson-qq
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.insert-ordered-containers
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.swagger2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.lens
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }
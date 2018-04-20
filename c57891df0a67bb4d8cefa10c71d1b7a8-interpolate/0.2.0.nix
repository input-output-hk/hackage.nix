{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "interpolate";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2013-2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/interpolate#readme";
        url = "";
        synopsis = "String interpolation done right";
        description = "String interpolation done right";
        buildType = "Simple";
      };
      components = {
        interpolate = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-meta
            hsPkgs.template-haskell
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.haskell-src-meta
              hsPkgs.hspec
              hsPkgs.quickcheck-instances
              hsPkgs.template-haskell
              hsPkgs.text
            ];
          };
        };
      };
    }
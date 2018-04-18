{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base-orphans";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão,\n(c) 2015 Ryan Scott";
        maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        homepage = "https://github.com/haskell-compat/base-orphans";
        url = "";
        synopsis = "Backwards-compatible orphan instances for base";
        description = "@base-orphans@ defines orphan instances that mimic instances\navailable in later versions of @base@ to a wider (older) range\nof compilers. @base-orphans@ does not export anything except\nthe orphan instances themselves, making it a leaner dependency\nthan @<http://hackage.haskell.org/package/base-compat base-compat>@.\n\nSee the README for what instances are covered:\n<https://github.com/haskell-compat/base-orphans#readme>";
        buildType = "Simple";
      };
      components = {
        base-orphans = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-orphans
              hsPkgs.hspec
            ];
          };
        };
      };
    }
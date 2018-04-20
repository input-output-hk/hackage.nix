{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base-compat";
          version = "0.8.0";
        };
        license = "MIT";
        copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão,\n(c) 2015 Ryan Scott";
        maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A compatibility layer for base";
        description = "Ban CPP from your code.  See the README for what is covered:\n<https://github.com/haskell-compat/base-compat#readme>";
        buildType = "Simple";
      };
      components = {
        base-compat = {
          depends  = [
            hsPkgs.base
            hsPkgs.setenv
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
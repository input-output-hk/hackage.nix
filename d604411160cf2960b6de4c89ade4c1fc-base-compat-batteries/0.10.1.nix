{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base-compat-batteries";
          version = "0.10.1";
        };
        license = "MIT";
        copyright = "(c) 2012-2018 Simon Hengel,\n(c) 2014-2018 João Cristóvão,\n(c) 2015-2018 Ryan Scott";
        maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "base-compat with extra batteries";
        description = "Provides functions available in later versions of @base@ to\na wider range of compilers, without requiring you to use CPP\npragmas in your code.\n\nThis package provides the same API as the\n@<http://hackage.haskell.org/package/base-compat base-compat>@\nlibrary, but depends on compatibility packages\n(such as @semigroups@) to offer a wider support window than\n@base-compat@, which has no dependencies. Most of the modules\nin this library have the same names as in @base-compat@\nto make it easier to switch between the two. There also exist\nversions of each module with the suffix @.Repl.Batteries@,\nwhich are distinct from anything in @base-compat@, to allow\nfor easier use in GHCi.\n\nSee\n@<https://github.com/haskell-compat/base-compat/blob/master/base-compat/README.markdown#dependencies here>@\nfor a more comprehensive list of differences between\n@base-compat@ and @base-compat-batteries@.";
        buildType = "Simple";
      };
      components = {
        base-compat-batteries = {
          depends  = ((([
            hsPkgs.base
            hsPkgs.base-compat
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.tagged) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.nats
            hsPkgs.void
          ]) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.bifunctors;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat-batteries
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
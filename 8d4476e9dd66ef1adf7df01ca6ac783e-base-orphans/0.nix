{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base-orphans";
          version = "0";
        };
        license = "MIT";
        copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão,\n(c) 2015 Ryan Scott";
        maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
        homepage = "https://github.com/haskell-compat/base-orphans#readme";
        url = "";
        synopsis = "Backwards-compatible orphan instances for base";
        description = "@base-orphans@ defines orphan instances that mimic instances available in later versions of @base@ to a wider (older) range of compilers. @base-orphans@ does not export anything except the orphan instances themselves and complements @<http://hackage.haskell.org/package/base-compat base-compat>@.\n`base-orphans-0` is an intentional empty release. For an explanation as to why it exists, see the <https://github.com/haskell-compat/base-orphans/tree/base-orphans-0#readme README>.";
        buildType = "Simple";
      };
      components = {
        base-orphans = {};
      };
    }
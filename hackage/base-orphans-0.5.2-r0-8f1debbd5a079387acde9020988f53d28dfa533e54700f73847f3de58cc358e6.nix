{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "base-orphans";
        version = "0.5.2";
      };
      license = "MIT";
      copyright = "(c) 2012-2016 Simon Hengel,\n(c) 2014-2016 João Cristóvão,\n(c) 2015-2016 Ryan Scott";
      maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      homepage = "https://github.com/haskell-compat/base-orphans#readme";
      url = "";
      synopsis = "Backwards-compatible orphan instances for base";
      description = "@base-orphans@ defines orphan instances that mimic instances available in later versions of @base@ to a wider (older) range of compilers. @base-orphans@ does not export anything except the orphan instances themselves and complements @<http://hackage.haskell.org/package/base-compat base-compat>@.\nSee the README for what instances are covered: <https://github.com/haskell-compat/base-orphans#readme>. See also the <https://github.com/haskell-compat/base-orphans#what-is-not-covered what is not covered> section.";
      buildType = "Simple";
    };
    components = {
      "base-orphans" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }
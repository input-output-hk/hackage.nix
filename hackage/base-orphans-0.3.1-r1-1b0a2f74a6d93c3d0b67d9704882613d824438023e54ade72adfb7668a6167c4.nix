{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "base-orphans"; version = "0.3.1"; };
      license = "MIT";
      copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão,\n(c) 2015 Ryan Scott";
      maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      homepage = "https://github.com/haskell-compat/base-orphans#readme";
      url = "";
      synopsis = "Backwards-compatible orphan instances for base";
      description = "@base-orphans@ defines orphan instances that mimic instances available in later versions of @base@ to a wider (older) range of compilers. @base-orphans@ does not export anything except the orphan instances themselves and complements @<http://hackage.haskell.org/package/base-compat base-compat>@.\n\nSee the README for what instances are covered: <https://github.com/haskell-compat/base-orphans#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
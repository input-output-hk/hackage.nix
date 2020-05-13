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
      specVersion = "1.8";
      identifier = { name = "base-compat"; version = "0.8.0.1"; };
      license = "MIT";
      copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão,\n(c) 2015 Ryan Scott";
      maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@ku.edu>";
      author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@ku.edu>";
      homepage = "";
      url = "";
      synopsis = "A compatibility layer for base";
      description = "Provides functions available in later versions of @base@ to\na wider range of compilers, without requiring you to use CPP\npragmas in your code.  See the\n<https://github.com/haskell-compat/base-compat#readme README>\nfor what is covered. Also see the\n<https://github.com/haskell-compat/base-compat/blob/master/CHANGES.markdown changelog>\nfor recent changes.\n\nNote that @base-compat@ does not add any orphan instances.\nThere is a separate package\n@<http://hackage.haskell.org/package/base-orphans base-orphans>@\nfor that.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
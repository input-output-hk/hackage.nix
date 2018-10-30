{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "base-compat";
        version = "0.9.1";
      };
      license = "MIT";
      copyright = "(c) 2012-2016 Simon Hengel,\n(c) 2014-2016 João Cristóvão,\n(c) 2015-2016 Ryan Scott";
      maintainer = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      author = "Simon Hengel <sol@typeful.net>,\nJoão Cristóvão <jmacristovao@gmail.com>,\nRyan Scott <ryan.gl.scott@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A compatibility layer for base";
      description = "Provides functions available in later versions of @base@ to\na wider range of compilers, without requiring you to use CPP\npragmas in your code.  See the\n<https://github.com/haskell-compat/base-compat#readme README>\nfor what is covered. Also see the\n<https://github.com/haskell-compat/base-compat/blob/master/CHANGES.markdown changelog>\nfor recent changes.\n\nNote that @base-compat@ does not add any orphan instances.\nThere is a separate package,\n@<http://hackage.haskell.org/package/base-orphans base-orphans>@,\nfor that.\n\nIn addition, `base-compat` does not backport any data types\nor type classes. See\n@<https://github.com/haskell-compat/base-compat#data-types-and-type-classes this section of the README>@\nfor more info.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }
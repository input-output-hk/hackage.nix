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
      specVersion = "2.2";
      identifier = {
        name = "spdx";
        version = "1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/spdx";
      url = "";
      synopsis = "SPDX license expression language, Extras";
      description = "Cabal provides SPDX types. This package provides some extras.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Cabal)
            (hsPkgs.spdx)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Cabal)
            (hsPkgs.spdx)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }
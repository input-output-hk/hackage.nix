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
      specVersion = "1.10";
      identifier = {
        name = "cl3";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017-2018 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3";
      url = "";
      synopsis = "Clifford Algebra of three dimensional space.";
      description = "Haskell Library implementing standard functions for the Algebra of Physical Space Cl(3,0)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.random)
        ];
      };
      tests = {
        "test-cl3" = {
          depends = [
            (hsPkgs.cl3)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bench-cl3-nbody" = {
          depends = [
            (hsPkgs.cl3)
            (hsPkgs.base)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }
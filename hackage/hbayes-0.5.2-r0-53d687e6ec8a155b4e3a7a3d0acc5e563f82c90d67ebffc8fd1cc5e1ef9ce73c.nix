{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      local = false;
      profile = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hbayes";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2016, alpheccar";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Bayesian Networks";
      description = "Algorithms for Bayesian Networks.\nIt is a very preliminary version. It has only been tested on very simple\nexamples where it worked. It should be considered as experimental and not used\nin any production work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
          (hsPkgs.pretty)
          (hsPkgs.boxes)
          (hsPkgs.vector)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.parsec)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.binary)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.HUnit)
          (hsPkgs.mwc-random)
          (hsPkgs.statistics)
          (hsPkgs.gamma)
        ];
      };
      tests = {
        "hbayes-Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hbayes)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.pretty)
            (hsPkgs.boxes)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.split)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.binary)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.mwc-random)
            (hsPkgs.statistics)
            (hsPkgs.gamma)
          ];
        };
      };
    };
  }
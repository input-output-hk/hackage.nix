{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snowball"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Dag Odenhall, (c) 2008 Tupil, (c) 2002 Richard Boulton";
      maintainer = "dag.odenhall@gmail.com";
      author = "";
      homepage = "http://hub.darcs.net/dag/snowball";
      url = "";
      synopsis = "Bindings to the Snowball library.";
      description = "The Snowball library is used to compute the stems of words\nin natural languages.\n\nCompared to the older <stemmer> package, this one:\n\n* Correctly handles unicode without relying on the system\nlocale\n\n* Takes greater care to avoid memory leaks and to be thread\nsafe\n\n* Uses Text rather than String\n\n* Gets rid of the need for @stemWords@ by using rewrite\nrules to make @map stem@ efficient\n\n* Includes a more recent release of Snowball\n\n* Attempts to comply with the Snowball licensing terms\n\n* Supports @SafeHaskell@ when available and is otherwise\n@Haskell2010@\n\n* Comes with a test suite\n\nHowever, although this code is written from scratch, it is\nheavily modeled after the code of the \\\"stemmer\\\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          ];
        };
      tests = {
        "test-snowball" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.snowball)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "bench-snowball" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.language-haskell-extract)
            (hsPkgs.snowball)
            (hsPkgs.text)
            ];
          };
        };
      };
    }
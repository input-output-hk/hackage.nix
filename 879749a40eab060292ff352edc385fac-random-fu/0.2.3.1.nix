{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4_2 = true;
      mtl2 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random-fu";
          version = "0.2.3.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Random number generation";
        description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\n\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\n\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\n\nChanges in 0.2.3.1: Should now build on GHC 7.6\n\nChanges in 0.2.3.0: Added stretched exponential distribution,\ncontributed by Ben Gamari.\n\nChanges in 0.2.2.0: Bug fixes in Data.Random.Distribution.Categorical.\n\nChanges in 0.2.1.1: Changed some one-field data types\nto newtypes, updated types for GHC 7.4's removal of Eq\nand Show from the context of Num, and added RVarT versions\nof random variables in Data.Random.List\n\nChanges in 0.2.1.0: Exposed Categorical type (it\nhad been hidden by accident a few version ago),\ngave it a Read instance, and dropped a\nno-longer-necessary Ord context from 'fromWeightedList'.\nThank you Antal Spector-Zabusky for catching these!";
        buildType = "Simple";
      };
      components = {
        "random-fu" = {
          depends  = (([
            hsPkgs.gamma
            hsPkgs.monad-loops
            hsPkgs.random-shuffle
            hsPkgs.random-source
            hsPkgs.rvar
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.vector
          ] ++ [ hsPkgs.base ]) ++ [
            hsPkgs.mtl
          ]) ++ (if system.isWindows
            then [ hsPkgs.erf-native ]
            else [ hsPkgs.erf ]);
        };
      };
    }
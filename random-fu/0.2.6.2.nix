{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4_2 = true;
      mtl2 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "random-fu";
          version = "0.2.6.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Dominic Steinitz <dominic@steinitz.org>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Random number generation";
        description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\n\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\n\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.";
        buildType = "Simple";
      };
      components = {
        random-fu = {
          depends  = (([
            hsPkgs.math-functions
            hsPkgs.monad-loops
            hsPkgs.random-shuffle
            hsPkgs.random-source
            hsPkgs.rvar
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.log-domain
          ] ++ [ hsPkgs.base ]) ++ [
            hsPkgs.mtl
          ]) ++ (if system.isWindows
            then [ hsPkgs.erf-native ]
            else [ hsPkgs.erf ]);
        };
      };
    }
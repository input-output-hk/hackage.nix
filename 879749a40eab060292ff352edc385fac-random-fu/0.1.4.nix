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
          version = "0.1.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Random number generation";
        description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\nWarning to anyone upgrading from \\\"< 0.1\\\": 'Discrete'\nhas been renamed 'Categorical', the entropy source\nclasses have been redesigned, and many things are no\nlonger exported from the root module \"Data.Random\"\n(In particular, DevRandom - this is not available on\nwindows, so it will likely move to its own package\neventually so that client code dependencies on it will\nbe made explicit).\nSupport for \"base\" packages earlier than version 4\n(and thus GHC releases earlier than 6.10) has been\ndropped, as too many of this package's dependencies do\nnot support older versions.\nThe \"Data.Random\" module itself should now have a\nrelatively stable interface, but the other modules\nare still subject to change.  Specifically, I am\nconsidering hiding data constructors for most or all\nof the distributions.";
        buildType = "Simple";
      };
      components = {
        random-fu = {
          depends  = (([
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mersenne-random-pure64
            hsPkgs.monad-loops
            hsPkgs.MonadPrompt
            hsPkgs.mwc-random
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.stateref
            hsPkgs.syb
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.vector
          ] ++ [ hsPkgs.base ]) ++ [
            hsPkgs.mtl
          ]) ++ (if system.isWindows
            then [ hsPkgs.erf-native ]
            else [ hsPkgs.erf ]);
        };
      };
    }
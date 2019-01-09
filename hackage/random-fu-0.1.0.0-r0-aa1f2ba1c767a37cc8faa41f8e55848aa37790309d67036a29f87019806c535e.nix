{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; base4_2 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "random-fu"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\nWarning to anyone upgrading from \\\"< 0.1\\\": 'Discrete'\nhas been renamed 'Categorical', the entropy source\nclasses have been redesigned, and many things are no\nlonger exported from the root module \"Data.Random\"\n(In particular, DevRandom - this is not available on\nwindows, so it will likely move to its own package\neventually so that client code dependencies on it will\nbe made explicit).\nThe \"Data.Random\" module itself should now have a\nrelatively stable interface, but the other modules\nare still subject to change.  Specifically, I am\nconsidering hiding data constructors for most or all\nof the distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.monad-loops)
          (hsPkgs.MonadPrompt)
          (hsPkgs.mwc-random)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.stateref)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ] ++ (if flags.base4
          then [ (hsPkgs.syb) ] ++ [ (hsPkgs.base) ]
          else [ (hsPkgs.base) ])) ++ (if system.isWindows
          then [ (hsPkgs.erf-native) ]
          else [ (hsPkgs.erf) ]);
        };
      };
    }
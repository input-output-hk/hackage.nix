{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4_2 = true;
      mtl2 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "random-fu";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "https://github.com/mokus0/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\nWarning to anyone upgrading from \\\"< 0.2\\\": The old\nrandom-fu package has been split into three parts:\nrandom-source, rvar, and this new random-fu.  The\nend-user interface is mostly the same.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.gamma)
          (hsPkgs.monad-loops)
          (hsPkgs.random-shuffle)
          (hsPkgs.random-source)
          (hsPkgs.rvar)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ] ++ [ (hsPkgs.base) ]) ++ [
          (hsPkgs.mtl)
        ]) ++ (if system.isWindows
          then [ (hsPkgs.erf-native) ]
          else [ (hsPkgs.erf) ]);
      };
    };
  }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4_2 = true; mtl2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-fu"; version = "0.1.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/random-fu";
      url = "";
      synopsis = "Random number generation";
      description = "Random number generation based on modeling random\nvariables in two complementary ways: first, by the\nparameters of standard mathematical distributions and,\nsecond, by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\nWarning to anyone upgrading from \\\"< 0.1\\\": 'Discrete'\nhas been renamed 'Categorical', the entropy source\nclasses have been redesigned, and many things are no\nlonger exported from the root module \"Data.Random\"\n(In particular, DevRandom - this is not available on\nwindows, so it will likely move to its own package\neventually so that client code dependencies on it will\nbe made explicit).\nSupport for \"base\" packages earlier than version 4\n(and thus GHC releases earlier than 6.10) has been\ndropped, as too many of this package's dependencies do\nnot support older versions.\nThe \"Data.Random\" module itself should now have a\nrelatively stable interface, but the other modules\nare still subject to change.  Specifically, I am\nconsidering hiding data constructors for most or all\nof the distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."MonadPrompt" or ((hsPkgs.pkgs-errors).buildDepError "MonadPrompt"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."stateref" or ((hsPkgs.pkgs-errors).buildDepError "stateref"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ]) ++ [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ]) ++ (if system.isWindows
          then [
            (hsPkgs."erf-native" or ((hsPkgs.pkgs-errors).buildDepError "erf-native"))
            ]
          else [
            (hsPkgs."erf" or ((hsPkgs.pkgs-errors).buildDepError "erf"))
            ]);
        buildable = true;
        };
      };
    }
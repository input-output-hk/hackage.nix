{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4_2 = true; mtl2 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "random-fu"; version = "0.2"; };
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
        depends = (([
          (hsPkgs."gamma" or ((hsPkgs.pkgs-errors).buildDepError "gamma"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."random-source" or ((hsPkgs.pkgs-errors).buildDepError "random-source"))
          (hsPkgs."rvar" or ((hsPkgs.pkgs-errors).buildDepError "rvar"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
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
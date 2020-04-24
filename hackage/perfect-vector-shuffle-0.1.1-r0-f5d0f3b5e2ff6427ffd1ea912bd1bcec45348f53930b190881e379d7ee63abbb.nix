{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "perfect-vector-shuffle"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2019";
      maintainer = "callan.mcgill@gmail.com";
      author = "Callan McGill";
      homepage = "https://github.com/Boarders/perfect-vector-shuffle";
      url = "";
      synopsis = "Library for performing vector shuffles";
      description = "\nThis package contains functions for performing in-place Fisher--Yates\nshuffles on mutable and immutable vectors along with some related\nfunctionality. The shuffles are uniform at random amongst all\npermuations.\n\nFor an example of how to use it:\n\n@\nmodule Main where\n\nimport Data.Vector\nimport Immutable.Shuffle\n\nmain :: IO ()\nmain = do {\nshuffleMyVector >>= print;\ncycleMyVector   >>= print;\nderangeMyVector >>= print;\n}\n\nmyVector :: Vector Int\nmyVector = fromList [1..10]\n\nshuffleMyVector :: IO (Vector Int)\nshuffleMyVector = shuffleM myVector\n\ncycleMyVector :: IO (Vector Int)\ncycleMyVector = maximalCycleM myVector\n\nderangeMyVector :: IO (Vector Int)\nderangeMyVector = derangementM myVector\n@\n\nThis gives the following:\n\n@\n>>> main\n[2,8,1,5,10,9,7,3,6,4]\n[6,8,4,10,9,2,5,7,3,1]\n[8,5,4,1,10,9,3,6,2,7]\n\n>>> main\n[7,9,3,5,10,6,8,1,2,4]\n[2,4,10,7,8,1,5,9,3,6]\n[4,8,5,2,7,3,9,6,10,1]\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."perfect-vector-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "perfect-vector-shuffle"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        };
      };
    }
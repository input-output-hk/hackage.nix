{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lifted-base-tf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Bas van Dijk, Anders Kaseorg";
      maintainer = "M Farkas-Dyck <strake888@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/basvandijk/lifted-base";
      url = "";
      synopsis = "lifted IO operations from the base library";
      description = "Fork of <https://hackage.haskell.org/package/lifted-base lifte-base> with type families rather than fundeps\n@lifted-base@ exports IO operations from the base library lifted to\nany instance of 'MonadBase' or 'MonadBaseControl'.\n\nNote that not all modules from @base@ are converted yet. If\nyou need a lifted version of a function from @base@, just\nask me to add it or send me a patch.\n\nThe package includes a copy of the @monad-peel@ testsuite written\nby Anders Kaseorg The tests can be performed using @cabal test@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic" or ((hsPkgs.pkgs-errors).buildDepError "basic"))
          (hsPkgs."control" or ((hsPkgs.pkgs-errors).buildDepError "control"))
          ];
        buildable = true;
        };
      tests = {
        "test-lifted-base" = {
          depends = [
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."basic" or ((hsPkgs.pkgs-errors).buildDepError "basic"))
            (hsPkgs."control" or ((hsPkgs.pkgs-errors).buildDepError "control"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lifted-base" = {
          depends = [
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."monad-peel" or ((hsPkgs.pkgs-errors).buildDepError "monad-peel"))
            ];
          buildable = true;
          };
        };
      };
    }
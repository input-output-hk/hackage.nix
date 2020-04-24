{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { monad-control-1 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lifted-async"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2017 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/lifted-async";
      url = "";
      synopsis = "Run lifted IO operations asynchronously and wait for their results";
      description = "This package provides IO operations from @async@ package lifted to any\ninstance of 'MonadBase' or 'MonadBaseControl'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ] ++ (if flags.monad-control-1
          then [
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            ] ++ [
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            ]
          else [
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            ]);
        buildable = true;
        };
      tests = {
        "test-lifted-async" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        "regression-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-lifted-async" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            ];
          buildable = true;
          };
        "benchmark-lifted-async-threaded" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
            ];
          buildable = true;
          };
        };
      };
    }
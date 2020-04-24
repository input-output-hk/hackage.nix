{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cuda = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Torch for tensors and neural networks in Haskell";
      description = "Hasktorch is a library for tensors and neural networks in Haskell. It is an independent open source community project which leverages the core C libraries shared by Torch and PyTorch. This library leverages @cabal v2-build@ and @backpack@. *Note that this project is in early development and should only be used by contributing developers. Expect substantial changes to the library API as it evolves. Contributions and PRs are welcome (see details on github).*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hasktorch-cpu" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-cpu"))
          (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
          (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."hasktorch-gpu" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-gpu"));
        buildable = true;
        };
      sublibs = {
        "hasktorch-cpu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hasktorch-indef-floating" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-indef-signed" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-signed"))
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs."hasktorch-indef-unsigned" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-unsigned"));
          buildable = true;
          };
        "hasktorch-gpu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hasktorch-indef-floating" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-indef-signed" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-signed"))
            (hsPkgs."hasktorch-ffi-thc" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-thc"))
            ] ++ (pkgs.lib).optional (!flags.lite) (hsPkgs."hasktorch-indef-unsigned" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-unsigned"));
          buildable = true;
          };
        "hasktorch-indef-unsigned" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef"))
            ];
          buildable = true;
          };
        "hasktorch-indef-signed" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef"))
            ];
          buildable = true;
          };
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-indef" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures-partial"))
            ];
          buildable = true;
          };
        };
      exes = {
        "isdefinite-cpu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-cpu" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-cpu"))
            ];
          buildable = true;
          };
        "isdefinite-gpu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-gpu" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-gpu"))
            ];
          buildable = true;
          };
        "isdefinite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch"))
            ];
          buildable = true;
          };
        "memcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."backprop" or ((hsPkgs.pkgs-errors).buildDepError "backprop"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            ];
          buildable = true;
          };
        };
      };
    }
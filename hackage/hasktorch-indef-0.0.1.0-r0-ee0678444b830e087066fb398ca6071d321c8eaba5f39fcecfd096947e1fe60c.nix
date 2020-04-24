{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cuda = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-indef"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Core Hasktorch abstractions wrapping FFI bindings";
      description = "The hasktorch-indef package constitutes the main user API for hasktorch. It uses backpack signatures to generically glue low-level FFI bindings to a high-level interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."backprop" or ((hsPkgs.pkgs-errors).buildDepError "backprop"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
          (hsPkgs."hasktorch-signatures" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures"))
          (hsPkgs."hasktorch-signatures-support" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures-support"))
          (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
          (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.cuda) [
          (hsPkgs."hasktorch-types-thc" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-thc"))
          (hsPkgs."cuda" or ((hsPkgs.pkgs-errors).buildDepError "cuda"))
          ];
        buildable = true;
        };
      sublibs = {
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hasktorch-indef" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-signatures-partial"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec-double-th" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."backprop" or ((hsPkgs.pkgs-errors).buildDepError "backprop"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dimensions" or ((hsPkgs.pkgs-errors).buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch-indef-floating" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-indef-floating"))
            (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
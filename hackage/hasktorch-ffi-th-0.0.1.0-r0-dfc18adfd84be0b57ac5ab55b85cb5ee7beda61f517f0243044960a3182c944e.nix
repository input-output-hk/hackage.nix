{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { half = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-ffi-th"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Bindings to Torch";
      description = "Torch (and THNN) FFI bindings for CPU-based tensors and neural networks in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = [ (pkgs."ATen" or ((hsPkgs.pkgs-errors).sysDepError "ATen")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hasktorch-ffi-tests" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-tests"))
            (hsPkgs."hasktorch-ffi-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or ((hsPkgs.pkgs-errors).buildDepError "hasktorch-types-th"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
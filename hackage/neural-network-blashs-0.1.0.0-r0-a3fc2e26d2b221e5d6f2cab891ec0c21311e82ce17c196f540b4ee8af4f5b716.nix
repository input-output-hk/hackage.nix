{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { vec128 = false; vec256 = false; vec512 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "neural-network-blashs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/neural-network";
      url = "";
      synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
      description = "Provides execution backend of neural network on top of blas-hs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blas-hs" or ((hsPkgs.pkgs-errors).buildDepError "blas-hs"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."neural-network-base" or ((hsPkgs.pkgs-errors).buildDepError "neural-network-base"))
          ];
        buildable = true;
        };
      tests = {
        "s1" = {
          depends = [
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."blas-hs" or ((hsPkgs.pkgs-errors).buildDepError "blas-hs"))
            (hsPkgs."neural-network-base" or ((hsPkgs.pkgs-errors).buildDepError "neural-network-base"))
            ];
          buildable = true;
          };
        };
      };
    }
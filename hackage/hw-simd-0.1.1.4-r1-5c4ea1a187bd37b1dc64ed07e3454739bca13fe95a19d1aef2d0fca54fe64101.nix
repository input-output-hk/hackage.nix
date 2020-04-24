{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-simd"; version = "0.1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-simd#readme";
      url = "";
      synopsis = "SIMD library";
      description = "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "hw-simd-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hw-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-simd"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hw-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-simd"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }
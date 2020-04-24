{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; sse42 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json-standard-cursor"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json-standard-cursor#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Memory efficient JSON parser. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hw-balancedparens" or ((hsPkgs.pkgs-errors).buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-json-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-simd"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ];
        buildable = true;
        };
      exes = {
        "hw-json-standard-cursor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."hw-balancedparens" or ((hsPkgs.pkgs-errors).buildDepError "hw-balancedparens"))
            (hsPkgs."hw-json-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-simd"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hw-json-standard-cursor" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-standard-cursor"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      tests = {
        "hw-json-standard-cursor-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or ((hsPkgs.pkgs-errors).buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hw-json-standard-cursor" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-standard-cursor"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "hw-json-standard-cursor-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-discover" or ((hsPkgs.pkgs-errors).buildDepError "doctest-discover"))
            (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or ((hsPkgs.pkgs-errors).buildToolDepError "doctest-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
            (hsPkgs."hw-json-standard-cursor" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-standard-cursor"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-eliasfano"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2020 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-eliasfano#readme";
      url = "";
      synopsis = "Elias-Fano";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-int" or ((hsPkgs.pkgs-errors).buildDepError "hw-int"))
          (hsPkgs."hw-packed-vector" or ((hsPkgs.pkgs-errors).buildDepError "hw-packed-vector"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
          (hsPkgs."temporary-resourcet" or ((hsPkgs.pkgs-errors).buildDepError "temporary-resourcet"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hw-eliasfano" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
            (hsPkgs."hw-packed-vector" or ((hsPkgs.pkgs-errors).buildDepError "hw-packed-vector"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."temporary-resourcet" or ((hsPkgs.pkgs-errors).buildDepError "temporary-resourcet"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hw-eliasfano-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
            (hsPkgs."hw-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-int" or ((hsPkgs.pkgs-errors).buildDepError "hw-int"))
            (hsPkgs."hw-packed-vector" or ((hsPkgs.pkgs-errors).buildDepError "hw-packed-vector"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-discover" or ((hsPkgs.pkgs-errors).buildDepError "doctest-discover"))
            (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
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
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
            (hsPkgs."hw-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-int" or ((hsPkgs.pkgs-errors).buildDepError "hw-int"))
            (hsPkgs."hw-packed-vector" or ((hsPkgs.pkgs-errors).buildDepError "hw-packed-vector"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }
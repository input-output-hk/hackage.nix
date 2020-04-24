{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-hspec-hedgehog"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2020 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-hspec-hedgehog#readme";
      url = "";
      synopsis = "Interoperability between hspec and hedgehog";
      description = "Interoperability between hspec and hedgehog.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."call-stack" or ((hsPkgs.pkgs-errors).buildDepError "call-stack"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "hw-hspec-hedgehog-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."call-stack" or ((hsPkgs.pkgs-errors).buildDepError "call-stack"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
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
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or ((hsPkgs.pkgs-errors).buildToolDepError "doctest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "genvalidity-hspec-binary"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for binary-related Instances";
      description = "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-binary-doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-binary" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-binary"))
            (hsPkgs."genvalidity-property" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-property"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-binary-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-binary" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-binary"))
            (hsPkgs."genvalidity-property" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-property"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
            ];
          buildable = true;
          };
        };
      };
    }
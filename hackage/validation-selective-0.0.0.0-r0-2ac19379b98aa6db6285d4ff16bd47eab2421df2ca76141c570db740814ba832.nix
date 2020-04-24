{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "validation-selective"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov, Veronika Romashkina";
      homepage = "https://github.com/kowainik/validation-selective";
      url = "";
      synopsis = "Lighweight pure data validation based on Applicative and Selective functors";
      description = "Lighweight pure data validation based on Applicative and Selective\nfunctors. The library builds validation interface around the\nfollowing data type:\n\n@\n__data__ Validation e a\n\\    = Failure e\n\\    | Success a\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."selective" or ((hsPkgs.pkgs-errors).buildDepError "selective"))
          ];
        buildable = true;
        };
      tests = {
        "validation-selective-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."validation-selective" or ((hsPkgs.pkgs-errors).buildDepError "validation-selective"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hspec-hedgehog"))
            (hsPkgs."selective" or ((hsPkgs.pkgs-errors).buildDepError "selective"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "validation-selective-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
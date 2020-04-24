{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tsne"; version = "1.0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "2017 Rob Agar";
      maintainer = "robagar@fastmail.net";
      author = "Rob Agar";
      homepage = "https://bitbucket.org/robagar/haskell-tsne";
      url = "";
      synopsis = "t-SNE";
      description = "Pure Haskell implementation of the t-SNE dimension reduction algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."normaldistribution" or ((hsPkgs.pkgs-errors).buildDepError "normaldistribution"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          ];
        buildable = true;
        };
      exes = {
        "haskell_tsne_example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."tsne" or ((hsPkgs.pkgs-errors).buildDepError "tsne"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tSNE-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."tsne" or ((hsPkgs.pkgs-errors).buildDepError "tsne"))
            ];
          buildable = true;
          };
        };
      };
    }
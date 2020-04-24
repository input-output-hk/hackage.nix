{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-RandomFu"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "https://github.com/adamConnerSax/polysemy-Extra#readme";
      url = "";
      synopsis = "Experimental, RandomFu effect and interpreters for polysemy";
      description = "Please see the README on GitHub at <https://github.com/adamConnerSax/polysemy-Extra/tree/master/polysemy-RandomFu#polysemy-randomfu>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-zoo" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-zoo"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."random-source" or ((hsPkgs.pkgs-errors).buildDepError "random-source"))
          ];
        buildable = true;
        };
      tests = {
        "polysemy-RandomFu-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-RandomFu" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-RandomFu"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-zoo" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-zoo"))
            (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
            (hsPkgs."random-source" or ((hsPkgs.pkgs-errors).buildDepError "random-source"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
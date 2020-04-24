{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-diverse-lens"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/data-diverse-lens#readme";
      url = "";
      synopsis = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which";
      description = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which\nRefer to [ManySpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/WhichSpec.hs) for example usages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "data-diverse-lens-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
            (hsPkgs."data-diverse-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse-lens"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }
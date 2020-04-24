{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "som"; version = "10.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2012-2018 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/som#readme";
      url = "";
      synopsis = "Self-Organising Maps";
      description = "Please see the README on GitHub at <https://github.com/mhwombat/som#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."grid" or ((hsPkgs.pkgs-errors).buildDepError "grid"))
          ];
        buildable = true;
        };
      tests = {
        "som-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."grid" or ((hsPkgs.pkgs-errors).buildDepError "grid"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."som" or ((hsPkgs.pkgs-errors).buildDepError "som"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }
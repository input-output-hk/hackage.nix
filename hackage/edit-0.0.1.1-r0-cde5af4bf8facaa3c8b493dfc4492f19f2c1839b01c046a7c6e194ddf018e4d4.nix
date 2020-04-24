{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      arbitrary_instance = false;
      comonad_instance = false;
      tutorial = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "edit"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Varun Gandhi 2018";
      maintainer = "Varun Gandhi <theindigamer15@gmail.com>";
      author = "Varun Gandhi <theindigamer15@gmail.com>";
      homepage = "https://github.com/theindigamer/edit";
      url = "";
      synopsis = "A monad for rewriting things.";
      description = "Edit is a monad for rewriting things.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.arbitrary_instance) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.comonad_instance) (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))) ++ (pkgs.lib).optionals (flags.tutorial) [
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-edit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."edit" or ((hsPkgs.pkgs-errors).buildDepError "edit"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
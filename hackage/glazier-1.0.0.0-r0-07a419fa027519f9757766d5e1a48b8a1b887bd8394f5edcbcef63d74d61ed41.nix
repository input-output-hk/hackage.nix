{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "glazier"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier#readme";
      url = "";
      synopsis = "Extensible effects using ContT, State and variants.";
      description = "Interpreting commmands with extensible effects using Cont/Concur monad, State, and variants.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."alternators" or ((hsPkgs.pkgs-errors).buildDepError "alternators"))
          (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
          (hsPkgs."data-diverse-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse-lens"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "glazier-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."alternators" or ((hsPkgs.pkgs-errors).buildDepError "alternators"))
            (hsPkgs."glazier" or ((hsPkgs.pkgs-errors).buildDepError "glazier"))
            (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
            (hsPkgs."data-diverse-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse-lens"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }
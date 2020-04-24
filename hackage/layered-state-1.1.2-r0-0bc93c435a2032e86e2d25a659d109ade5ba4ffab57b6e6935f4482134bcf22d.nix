{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "layered-state"; version = "1.1.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/layered-state";
      url = "";
      synopsis = "Control structure similar to Control.Monad.State, allowing multiple nested states, distinguishable by provided phantom types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-utils" or ((hsPkgs.pkgs-errors).buildDepError "lens-utils"))
          (hsPkgs."monad-branch" or ((hsPkgs.pkgs-errors).buildDepError "monad-branch"))
          (hsPkgs."monoid" or ((hsPkgs.pkgs-errors).buildDepError "monoid"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."prologue" or ((hsPkgs.pkgs-errors).buildDepError "prologue"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."typelevel" or ((hsPkgs.pkgs-errors).buildDepError "typelevel"))
          ];
        buildable = true;
        };
      benchmarks = {
        "layered-state-benchmark" = {
          depends = [
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
            (hsPkgs."layered-state" or ((hsPkgs.pkgs-errors).buildDepError "layered-state"))
            (hsPkgs."mtl-c" or ((hsPkgs.pkgs-errors).buildDepError "mtl-c"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            ];
          buildable = true;
          };
        };
      };
    }
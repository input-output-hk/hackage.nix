{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "kleene"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/kleene";
      url = "";
      synopsis = "Kleene algebra";
      description = "Kleene algebra\n\nThink: Regular expressions\n\nImplements ideas from /Regular-expression derivatives re-examined/ by\nScott Owens, John Reppy and Aaron Turon\n<https://doi.org/10.1017/S0956796808007090>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base-compat-batteries" or ((hsPkgs.pkgs-errors).buildDepError "base-compat-batteries"))
          (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
          (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))
          (hsPkgs."range-set-list" or ((hsPkgs.pkgs-errors).buildDepError "range-set-list"))
          (hsPkgs."step-function" or ((hsPkgs.pkgs-errors).buildDepError "step-function"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }
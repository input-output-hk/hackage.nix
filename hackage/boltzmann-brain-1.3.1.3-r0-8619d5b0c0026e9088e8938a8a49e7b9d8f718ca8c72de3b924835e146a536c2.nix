{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boltzmann-brain"; version = "1.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Maciej Bendkowski";
      maintainer = "maciej.bendkowski@tcs.uj.edu.pl";
      author = "Maciej Bendkowski";
      homepage = "https://github.com/maciej-bendkowski/boltzmann-brain";
      url = "";
      synopsis = "Boltzmann sampler compiler for combinatorial systems.";
      description = "Boltzmann Brain is a combinatorial system sampler compiler.\nUsing an easy and intuitive specification input representing a\ncombinatorial system, Boltzmann Brain constructs a working,\nself-contained module implementing a dedicated singular,\nrejection-based Boltzmann sampler with some additional\ncontrol over the constructor frequencies in the generated structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "bb" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."boltzmann-brain" or ((hsPkgs.pkgs-errors).buildDepError "boltzmann-brain"))
            ];
          buildable = true;
          };
        };
      };
    }
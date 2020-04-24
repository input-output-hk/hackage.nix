{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "g4ip-prover"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "klntsky@gmail.com";
      author = "Josh Acay, Klntsky";
      homepage = "";
      url = "";
      synopsis = "Theorem prover for intuitionistic propositional logic using G4ip";
      description = "Implementation of a theorem prover for intuitionistic propositional logic using G4ip";
      buildType = "Simple";
      };
    components = {
      exes = {
        "g4ip-prover" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            ];
          buildable = true;
          };
        };
      };
    }
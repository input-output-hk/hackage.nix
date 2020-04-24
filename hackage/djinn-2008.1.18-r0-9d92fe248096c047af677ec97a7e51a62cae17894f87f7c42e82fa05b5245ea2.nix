{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "djinn"; version = "2008.1.18"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lennart@augustsson.net";
      author = "Lennart Augustsson";
      homepage = "http://www.augustsson.net/Darcs/Djinn/";
      url = "";
      synopsis = "Generate Haskell code from a type";
      description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "djinn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }
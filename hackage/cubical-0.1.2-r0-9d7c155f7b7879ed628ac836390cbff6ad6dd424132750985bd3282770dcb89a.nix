{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cubical"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mortberg@chalmers.se";
      author = "Cyril Cohen, Thierry Coquand, Simon Huber, Anders Mörtberg";
      homepage = "https://github.com/simhu/cubical";
      url = "";
      synopsis = "Implementation of Univalence in Cubical Sets";
      description = "Cubical implements an experimental simple type checker\nfor type theory with univalence with an evaluator for closed terms.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "cubical" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."BNFC" or ((hsPkgs.pkgs-errors).buildDepError "BNFC"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }
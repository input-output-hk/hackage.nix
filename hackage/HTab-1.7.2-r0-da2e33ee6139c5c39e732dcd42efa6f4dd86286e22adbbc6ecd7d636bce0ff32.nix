{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "HTab"; version = "1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Guillaume Hoffmann, Carlos Areces, Daniel Gorín, Juan Heguiabehere";
      homepage = "http://hub.darcs.net/gh/htab";
      url = "";
      synopsis = "Tableau based theorem prover for hybrid logics";
      description = "Tableau based theorem prover for hybrid logics";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htab" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."hylolib" or ((hsPkgs.pkgs-errors).buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }
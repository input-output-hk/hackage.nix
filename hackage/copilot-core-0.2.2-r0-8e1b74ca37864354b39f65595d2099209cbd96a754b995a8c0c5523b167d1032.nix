{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot-core"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@gmail.com";
      author = "Lee Pike, Robin Morisset, Alwyn Goodloe,\nSebastian Niller, Nis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "An intermediate representation for Copilot.";
      description = "Intermediate representation for Copilot.\nStrictly follows Haskell 2010 except for universal\nand existential quantification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."pretty-ncols" or ((hsPkgs.pkgs-errors).buildDepError "pretty-ncols"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }
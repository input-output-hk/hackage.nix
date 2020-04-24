{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HaTeX-qq"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Quasiquoters for HaTeX";
      description = "Quasiquoters for HaTeX";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
          (hsPkgs."antiquoter" or ((hsPkgs.pkgs-errors).buildDepError "antiquoter"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }
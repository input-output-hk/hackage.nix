{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "species"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Brent Yorgey";
      homepage = "http://www.cis.upenn.edu/~byorgey/species";
      url = "";
      synopsis = "Computational combinatorial species";
      description = "A DSL for describing and computing with combinatorial species,\ne.g. counting labelled or unlabelled structures, or generating\na list of all labeled structures for a species.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."np-extras" or ((hsPkgs.pkgs-errors).buildDepError "np-extras"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."multiset-comb" or ((hsPkgs.pkgs-errors).buildDepError "multiset-comb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }
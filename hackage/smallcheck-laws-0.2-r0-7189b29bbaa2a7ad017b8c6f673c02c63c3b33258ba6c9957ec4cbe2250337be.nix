{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smallcheck-laws"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "";
      url = "";
      synopsis = "SmallCheck properties for common laws";
      description = "'smallcheck' properties for 'Monoid', 'Functor', 'Applicative' and 'Monad'\nlaws.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          (hsPkgs."smallcheck-series" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-series"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
        buildable = true;
        };
      };
    }
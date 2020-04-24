{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "salvia-sessions"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser, Erik Hesselink";
      homepage = "";
      url = "";
      synopsis = "Session support for the Salvia webserver.";
      description = "Session support for the Salvia webserver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MaybeT-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT-transformers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."salvia" or ((hsPkgs.pkgs-errors).buildDepError "salvia"))
          (hsPkgs."salvia-protocol" or ((hsPkgs.pkgs-errors).buildDepError "salvia-protocol"))
          (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
          ];
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Titim"; version = "0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "notjefff@gmail.com";
      author = "Jefffrey";
      homepage = "";
      url = "";
      synopsis = "Game for Lounge Marmelade";
      description = "Game for Lounge Marmelade";
      buildType = "Simple";
      };
    components = {
      exes = {
        "titim" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }
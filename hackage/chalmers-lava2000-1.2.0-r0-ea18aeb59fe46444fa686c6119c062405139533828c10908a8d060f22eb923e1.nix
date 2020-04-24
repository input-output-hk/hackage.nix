{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "chalmers-lava2000"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Koen Claessen <koen@chalmers.se>";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://projects.haskell.org/chalmers-lava2000/";
      url = "";
      synopsis = "Hardware description library";
      description = "Hardware description library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }
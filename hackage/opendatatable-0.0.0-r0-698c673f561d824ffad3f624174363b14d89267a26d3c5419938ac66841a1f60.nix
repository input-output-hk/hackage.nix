{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opendatatable"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "fabian.bergmark@gmail.com";
      author = "Fabian Bergmark";
      homepage = "https://github.com/fabianbergmark/OpenDataTable";
      url = "";
      synopsis = "A library for working with Open Data Tables";
      description = "Open Data Table definition, parser and pickler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }
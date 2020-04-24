{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "RESTng"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "none";
      author = "RedNucleus (see AUTHORS)";
      homepage = "";
      url = "";
      synopsis = "A framework for writing RESTful applications.";
      description = "RESTng is still experimental and incomplete, but many implemented features may be of interest, including: grids for presentation,\nhierarchical URLs automatic handling, ORM generates tables from haskell records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
          (hsPkgs."redHandlers" or ((hsPkgs.pkgs-errors).buildDepError "redHandlers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."yuiGrid" or ((hsPkgs.pkgs-errors).buildDepError "yuiGrid"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          ];
        buildable = true;
        };
      };
    }
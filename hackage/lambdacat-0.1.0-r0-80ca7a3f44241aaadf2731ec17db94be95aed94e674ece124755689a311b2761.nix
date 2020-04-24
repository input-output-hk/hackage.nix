{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lambdacat"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>,\nDaniel Ehlers <danielehlers@mindeye.net>";
      author = "Andreas Baldeau, Daniel Ehlers";
      homepage = "";
      url = "";
      synopsis = "Webkit Browser";
      description = "A Browser based on WebKit, concepted to be easy to use and\nextendable";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
          (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dyre" or ((hsPkgs.pkgs-errors).buildDepError "dyre"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = { "lambdacat" = { buildable = true; }; };
      };
    }
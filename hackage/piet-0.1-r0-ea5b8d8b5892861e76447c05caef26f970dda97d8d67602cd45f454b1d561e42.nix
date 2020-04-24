{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "piet"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Stephan Friedrichs";
      maintainer = "Stephan Friedrichs (deduktionstheorem at web dot de)";
      author = "Stephan Friedrichs";
      homepage = "";
      url = "";
      synopsis = "A Piet interpreter";
      description = "An interpreter for the Piet programming language,\nsee <http://www.dangermouse.net/esoteric/piet.html>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Imlib" or ((hsPkgs.pkgs-errors).buildDepError "Imlib"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = { "piet" = { buildable = true; }; };
      };
    }
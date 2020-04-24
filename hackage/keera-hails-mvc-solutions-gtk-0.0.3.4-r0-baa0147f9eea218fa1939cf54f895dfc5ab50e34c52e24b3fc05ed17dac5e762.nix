{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-mvc-solutions-gtk";
        version = "0.0.3.4";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Common solutions to recurrent problems in Gtk applications";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."keera-hails-mvc-environment-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-environment-gtk"))
          (hsPkgs."keera-hails-mvc-view" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view"))
          (hsPkgs."keera-hails-mvc-view-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view-gtk"))
          (hsPkgs."keera-hails-mvc-model-protectedmodel" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-model-protectedmodel"))
          (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."MissingK" or ((hsPkgs.pkgs-errors).buildDepError "MissingK"))
          ];
        buildable = true;
        };
      };
    }
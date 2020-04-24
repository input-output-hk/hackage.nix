{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "keera-posture"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://keera.co.uk/projects/keera-posture";
      url = "";
      synopsis = "Get notifications when your sitting posture is inappropriate.";
      description = "A program that notifies when you sit in a straining position.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "keera-posture" = {
          depends = if system.isWindows
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."cv-combinators" or ((hsPkgs.pkgs-errors).buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or ((hsPkgs.pkgs-errors).buildDepError "HOpenCV"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
              (hsPkgs."allocated-processor" or ((hsPkgs.pkgs-errors).buildDepError "allocated-processor"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."gio" or ((hsPkgs.pkgs-errors).buildDepError "gio"))
              (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
              (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
              (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              (hsPkgs."gtk-helpers" or ((hsPkgs.pkgs-errors).buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or ((hsPkgs.pkgs-errors).buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."cv-combinators" or ((hsPkgs.pkgs-errors).buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or ((hsPkgs.pkgs-errors).buildDepError "HOpenCV"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
              (hsPkgs."allocated-processor" or ((hsPkgs.pkgs-errors).buildDepError "allocated-processor"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."gio" or ((hsPkgs.pkgs-errors).buildDepError "gio"))
              (hsPkgs."hgettext" or ((hsPkgs.pkgs-errors).buildDepError "hgettext"))
              (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
              (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."gtk-helpers" or ((hsPkgs.pkgs-errors).buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or ((hsPkgs.pkgs-errors).buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
              ];
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."SDL_mixer" or ((hsPkgs.pkgs-errors).sysDepError "SDL_mixer"));
          buildable = true;
          };
        };
      };
    }
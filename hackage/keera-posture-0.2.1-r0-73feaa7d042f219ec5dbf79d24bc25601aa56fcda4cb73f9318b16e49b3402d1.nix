{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."cv-combinators" or (errorHandler.buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
              (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
              (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
              (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
              (hsPkgs."gtk-helpers" or (errorHandler.buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or (errorHandler.buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or (errorHandler.buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or (errorHandler.buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or (errorHandler.buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or (errorHandler.buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or (errorHandler.buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or (errorHandler.buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or (errorHandler.buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or (errorHandler.buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."cv-combinators" or (errorHandler.buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
              (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."gio" or (errorHandler.buildDepError "gio"))
              (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
              (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."gtk-helpers" or (errorHandler.buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or (errorHandler.buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or (errorHandler.buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or (errorHandler.buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or (errorHandler.buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or (errorHandler.buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or (errorHandler.buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or (errorHandler.buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or (errorHandler.buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or (errorHandler.buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
              ];
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."SDL_mixer" or (errorHandler.sysDepError "SDL_mixer"));
          buildable = true;
          };
        };
      };
    }
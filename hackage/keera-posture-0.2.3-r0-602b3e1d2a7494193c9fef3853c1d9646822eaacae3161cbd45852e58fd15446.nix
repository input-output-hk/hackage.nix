let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "keera-posture"; version = "0.2.3"; };
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
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."cv-combinators" or (buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or (buildDepError "HOpenCV"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."IfElse" or (buildDepError "IfElse"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."glib" or (buildDepError "glib"))
              (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or (buildDepError "SDL"))
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."gio" or (buildDepError "gio"))
              (hsPkgs."hgettext" or (buildDepError "hgettext"))
              (hsPkgs."setlocale" or (buildDepError "setlocale"))
              (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."HTTP" or (buildDepError "HTTP"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."Win32" or (buildDepError "Win32"))
              (hsPkgs."gtk-helpers" or (buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or (buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or (buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or (buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or (buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or (buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or (buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or (buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or (buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or (buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or (buildDepError "keera-hails-reactivevalues"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."cv-combinators" or (buildDepError "cv-combinators"))
              (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
              (hsPkgs."HOpenCV" or (buildDepError "HOpenCV"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."IfElse" or (buildDepError "IfElse"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."glib" or (buildDepError "glib"))
              (hsPkgs."allocated-processor" or (buildDepError "allocated-processor"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
              (hsPkgs."SDL" or (buildDepError "SDL"))
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."gio" or (buildDepError "gio"))
              (hsPkgs."hgettext" or (buildDepError "hgettext"))
              (hsPkgs."setlocale" or (buildDepError "setlocale"))
              (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."HTTP" or (buildDepError "HTTP"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."gtk-helpers" or (buildDepError "gtk-helpers"))
              (hsPkgs."MissingK" or (buildDepError "MissingK"))
              (hsPkgs."keera-hails-mvc-solutions-gtk" or (buildDepError "keera-hails-mvc-solutions-gtk"))
              (hsPkgs."keera-hails-mvc-model-protectedmodel" or (buildDepError "keera-hails-mvc-model-protectedmodel"))
              (hsPkgs."keera-hails-mvc-view-gtk" or (buildDepError "keera-hails-mvc-view-gtk"))
              (hsPkgs."keera-hails-i18n" or (buildDepError "keera-hails-i18n"))
              (hsPkgs."keera-hails-mvc-environment-gtk" or (buildDepError "keera-hails-mvc-environment-gtk"))
              (hsPkgs."keera-hails-reactive-gtk" or (buildDepError "keera-hails-reactive-gtk"))
              (hsPkgs."keera-hails-mvc-controller" or (buildDepError "keera-hails-mvc-controller"))
              (hsPkgs."keera-hails-mvc-solutions-config" or (buildDepError "keera-hails-mvc-solutions-config"))
              (hsPkgs."keera-hails-reactivevalues" or (buildDepError "keera-hails-reactivevalues"))
              ];
          libs = [ (pkgs."SDL_mixer" or (sysDepError "SDL_mixer")) ];
          buildable = true;
          };
        };
      };
    }
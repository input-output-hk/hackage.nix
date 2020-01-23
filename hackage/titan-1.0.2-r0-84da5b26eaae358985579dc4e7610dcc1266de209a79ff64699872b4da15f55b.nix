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
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "titan"; version = "1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "All Rights Reserved (c) 2018 - 2020 Keera Studios Ltd\nAll Rights Reserved (c) 2015 - 2017 Ivan Perez Dominguez";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/keera-studios/haskell-titan";
      url = "";
      synopsis = "Testing Infrastructure for Temporal AbstractioNs - GUI to debug temporal programs";
      description = "Debugging GUI that allows you to control the execution of a running FRP\nprogram.\n\nTITAN (Testing Infrastructure for Temporal AbstractioNs) is a framework to\ntest and debug FRP programs. It allows you to write temporal unit tests, check\nthem, QuickCheck them, run FRP programs with a fine-tuned debugger, obtain\ninformation to replicate tests, and follow and control the execution of a\nFRP program from an interactive GUI.\n\nThis program provides a GUI to connect to a running application and control its\nexecution.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "titan" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bsd" or (buildDepError "network-bsd"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."keera-hails-mvc-controller" or (buildDepError "keera-hails-mvc-controller"))
            (hsPkgs."keera-hails-mvc-environment-gtk" or (buildDepError "keera-hails-mvc-environment-gtk"))
            (hsPkgs."keera-hails-mvc-model-protectedmodel" or (buildDepError "keera-hails-mvc-model-protectedmodel"))
            (hsPkgs."keera-hails-mvc-solutions-gtk" or (buildDepError "keera-hails-mvc-solutions-gtk"))
            (hsPkgs."keera-hails-mvc-view" or (buildDepError "keera-hails-mvc-view"))
            (hsPkgs."keera-hails-mvc-view-gtk" or (buildDepError "keera-hails-mvc-view-gtk"))
            (hsPkgs."keera-hails-reactive-gtk" or (buildDepError "keera-hails-reactive-gtk"))
            (hsPkgs."keera-hails-reactive-polling" or (buildDepError "keera-hails-reactive-polling"))
            (hsPkgs."keera-hails-reactivevalues" or (buildDepError "keera-hails-reactivevalues"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }
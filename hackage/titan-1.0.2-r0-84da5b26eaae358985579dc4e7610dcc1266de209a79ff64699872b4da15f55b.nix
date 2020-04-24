{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-bsd" or ((hsPkgs.pkgs-errors).buildDepError "network-bsd"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."keera-hails-mvc-controller" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-controller"))
            (hsPkgs."keera-hails-mvc-environment-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-environment-gtk"))
            (hsPkgs."keera-hails-mvc-model-protectedmodel" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-model-protectedmodel"))
            (hsPkgs."keera-hails-mvc-solutions-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-solutions-gtk"))
            (hsPkgs."keera-hails-mvc-view" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view"))
            (hsPkgs."keera-hails-mvc-view-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view-gtk"))
            (hsPkgs."keera-hails-reactive-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactive-gtk"))
            (hsPkgs."keera-hails-reactive-polling" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactive-polling"))
            (hsPkgs."keera-hails-reactivevalues" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-reactivevalues"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }
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
      identifier = { name = "esotericbot"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Morrice";
      author = "John Morrice";
      homepage = "http://www.killersmurf.com/projects/esotericbot";
      url = "";
      synopsis = "Esotericbot is a sophisticated, lightweight IRC bot.";
      description = "Esotericbot is a sophisticated, lightweight IRC bot, written in Haskell.\n\nEsotericbot launches sub-processes to respond to commands issued by users over IRC.\n\nWhy would you use esotericbot?\n\nFor lambdabot-4.2.2.1:\n\nspoon@utensil:~/esotericbot\$ ps e v\n\nPID TTY      STAT   TIME  MAJFL   TRS   DRS   RSS %MEM COMMAND\n\n23433 pts/3    Sl+    0:00      0  8228 84855 33476  1.6 lambdabot\n\n15040 pts/5    S+     0:00      0  2171 28804  3292  0.1 ./esotericbot\n\nI'm not insinuating that lambdabot sucks in any way, ( it has cool stateful features, and is stable and excellent ) however, my hope is that esotericbot could attain equal functionality through plugins, while maintaining its small memory footprint.\n\nEsotericbot is small ( for Haskell :), designed to run on a server with limited memory - typically running at under 5mb of private memory.\n\nFeatures:\n\n* Advanced memory and time management options, utilizing POSIX resource management.\n\nFor example, the memory used by all child processes, can be limited - commands be queued until the memory usage has dropped.\n\n* Privileged channel operator commands ( Currently, can be disabled and enabled by channel operators, to prevent abuse. )\n\n* Easy to add new plugins.  A C library is included to make writing new plugins/adapting programs to be plugins easy.\n\n* Set up through a configuration file.\n\n* Multiple channels.\n\n* Multi-threaded\n\n* Lightweight, typically running at under 5mb of private memory.\n\nCons:\n\n* POSIX memory management, process forking, and chroot means that Esotericbot is POSIX only.\n\n* Esotericbot is, due to the libraries and extensions used, restricted to being compiled by the Glorious Glasgow Haskell Compiler.\n\n\nNote: esotericbot comes with several plugins which will be installed into your cabal-bin, and libraries installed into your cabal-lib.  Check cabal-bin for 'brainfuck', 'unlambda' , 'malbolge', 'sk' and 'whirl'.  These will need libplugin and libplugin++ from your cabal-lib to function correctly.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."stream-fusion" or (buildDepError "stream-fusion"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "esotericbot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."stream-fusion" or (buildDepError "stream-fusion"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
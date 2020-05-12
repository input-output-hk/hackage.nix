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
      identifier = { name = "esotericbot"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Morrice <spoon@killersmurf.com>";
      author = "John Morrice <spoon@killersmurf.com>";
      homepage = "http://www.killersmurf.com/projects/esotericbot";
      url = "";
      synopsis = "Esotericbot is a sophisticated, lightweight IRC bot.";
      description = "Esotericbot is a sophisticated, lightweight IRC bot, written in Haskell.\n\nEsotericbot launches sub-processes to respond to commands issued by users over IRC.\n\nWhy would you use esotericbot?\n\nFor lambdabot-4.2.2.1:\n\nspoon@utensil:~/esotericbot\$ ps e v\n\nPID TTY      STAT   TIME  MAJFL   TRS   DRS   RSS %MEM COMMAND\n\n23433 pts/3    Sl+    0:00      0  8228 84855 33476  1.6 lambdabot\n\n15040 pts/5    S+     0:00      0  2171 28804  3292  0.1 ./esotericbot\n\nI'm not insinuating that lambdabot sucks in any way, ( lambdabot is most excellent ) however, my hope is that esotericbot could attain equal functionality through plugins, while maintaining its small memory footprint.\n\nEsotericbot is small ( for Haskell :), designed to run on a server with limited memory - typically running at under 5mb of private memory.\n\nFeatures:\n\n* Advanced memory and time management options, utilizing POSIX resource management.\n\nFor example, the memory used by all child processes, can be limited - commands be queued until the memory usage has dropped.\n\n* Privileged channel operator commands ( Currently, can be disabled and enabled by channel operators, to prevent abuse. )\n\n* Easy to add new plugins.  A C library is included to make writing new plugins/adapting programs to be plugins easy.\n\n* Set up through a configuration file.\n\n* Multiple channels.\n\n* Multi-threaded\n\n* Lightweight, typically running at under 5mb of private memory.\n\nCons:\n\n* POSIX memory management, process forking, and chroot means that Esotericbot is POSIX only.\n\n* Esotericbot is, due to the libraries and extensions used, restricted to being compiled by the Glorious Glasgow Haskell Compiler.\n\n\nNote: esotericbot comes with several plugins which will be installed into your cabal-bin, and libraries installed into your cabal-lib.  Check cabal-bin for 'brainfuck', 'unlambda' , 'malbolge', 'sk' and 'whirl'.  These will need libplugin and libplugin++ from your cabal-lib to function correctly.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
        buildable = true;
        };
      exes = {
        "esotericbot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            ];
          buildable = true;
          };
        };
      };
    }
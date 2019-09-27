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
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "shaker"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Anthonin Bonnefoy";
      maintainer = "anthonin.bonnefoy@gmail.com";
      author = "Anthonin Bonnefoy";
      homepage = "http://github.com/bonnefoa/Shaker";
      url = "";
      synopsis = "simple and interactive command-line build tool";
      description = "Shaker is a build tool which allow to compile an haskell project with some features like continuous action similar to SBT.\n\nFor the moment, all configuration are made via cabal. Shaker will read cabal configuration to discover source directories, compilation options and targets to compile.\n\n/Usage/\n\nThe cabal configuration file should be generated beforehand with /runhaskell Setup.hs configure/. If you change your cabal configuration, you need to recreate the configuration file.\n\n/Execution/\n\nIn the root of your haskell project, launch shaker. An interactive prompt will allow you to execute differents action.\n\n/Action execution/\n\n[@Simple Execution@] An action can be launched normally, by entering the action name\n\n[@Multiple action execution@] You can specify multiple action to execute simply by separating action by spaces.\n\n[@Continuous Action@] A continuous action will execute the action when a changement on files has been detected.\nEvery action are elligible to continuous action, you simply need to prefix them with '~'\n\n/Available actions/\n\n[@Compile@] Compile the project. Targets of the compilation are main file (in case of executable) or exposed modules (in case of library).\n\n[@FullCompile@] Compile all hs files found in source directory. It is usefull to compile test sources.\n\n[@Clean@] Clean the directory containing .o and .hi files.\n\n[@Quit@] Exit the application.\n\n/Examples/\n\n[@% Compile@] Simply compile the project\n\n[@% Clean Compile@] Clean and compile the project\n\n[@% ~Compile@] Switch to continuous mode and will compile the project when sources are modified.\n\n[@% ~Clean Compile@] Switch to continuous mode and will clean and compile the project when sources are modified.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "shaker" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }
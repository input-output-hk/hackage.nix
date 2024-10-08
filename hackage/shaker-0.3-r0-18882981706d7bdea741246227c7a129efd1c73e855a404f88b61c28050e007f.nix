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
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "shaker"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Anthonin Bonnefoy";
      maintainer = "anthonin.bonnefoy@gmail.com";
      author = "Anthonin Bonnefoy";
      homepage = "http://github.com/bonnefoa/Shaker";
      url = "";
      synopsis = "simple and interactive command-line build tool";
      description = "Shaker is a build tool which allow to compile an haskell project with some features like continuous action similar to SBT.\n\nFor the moment, all configuration are made via cabal. Shaker will read cabal configuration to discover source directories, compilation options and targets to compile.\n\n/Usage/\n\nThe cabal configuration file should be generated beforehand with /runhaskell Setup.hs configure/. If you change your cabal configuration, you need to recreate the configuration file.\n\n/Execution/\n\nIn the root of your haskell project, launch shaker. An interactive prompt will allow you to execute differents action.\n\n/Action execution/\n\n[@Simple Execution@] An action can be launched normally, by entering the action name\n\n[@Multiple action execution@] You can specify multiple action to execute simply by separating action by spaces.\n\n[@Continuous Action@] A continuous action will execute the action when a changement on files has been detected.\nEvery action are elligible to continuous action, you simply need to prefix them with '~'\n\n/Available actions/\n\n[@Compile@] Compile the project. Targets of the compilation are main file (in case of executable) or exposed modules (in case of library).\n\n[@FullCompile@] Compile all hs files found in source directory. It is usefull to compile test sources.\n\n[@Clean@] Clean the directory containing .o and .hi files.\n\n[@QuickCheck@] Launch all QuickCheck properties of the project.\n\n[@HUnit@] Launch all HUnit tests of the project.\n\n[@Quit@] Exit the application.\n\n/Examples/\n\n[@% Compile@] Simply compile the project\n\n[@% Clean Compile@] Clean and compile the project\n\n[@% ~Compile@] Switch to continuous mode and will compile the project when sources are modified.\n\n[@% ~Clean Compile@] Switch to continuous mode and will clean and compile the project when sources are modified.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "shaker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = if !flags.test then false else true;
        };
      };
    };
  }
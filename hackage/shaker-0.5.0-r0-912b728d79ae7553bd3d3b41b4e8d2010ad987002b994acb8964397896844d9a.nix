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
      specVersion = "1.8";
      identifier = { name = "shaker"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Anthonin Bonnefoy";
      maintainer = "anthonin.bonnefoy@gmail.com";
      author = "Anthonin Bonnefoy";
      homepage = "http://github.com/bonnefoa/Shaker";
      url = "";
      synopsis = "simple and interactive command-line build tool";
      description = "Shaker is a build tool which allow to simply compile or launch test on an haskell project and provides some interesting features like continuous action. With continuous action, an action (compile or test) will be automatically executed when a source modification is detected.\n\nAll configuration are made via cabal; Shaker will read cabal configuration to discover source directories, compilation options and targets to compile.\n\n/Usage/\n\nThe cabal configuration file should be generated beforehand with /cabal configure/. If you change your cabal configuration, you will need to recreate the configuration file.\n\n/Launch interactive prompt/\n\nIn the root of your haskell project, launch shaker. An interactive prompt will allow you to execute different actions.\n\n/Launch a shaker action from command-line/\n\nIn the root of your haskell project, launch shaker with your action as a command argument; shaker will execute the given action and exit. See examples for more details.\n\n/Action execution/\n\n[@Simple Execution@] An action can be launched normally, by entering the action name.\n\n[@Multiple action execution@] You can specify multiple action to execute simply by separating action by spaces.\n\n[@Continuous Action@] A continuous action will execute the action when a file modification has been detected.\nEvery action are elligible to continuous action, you simply need to prefix them with '~'. To stop a continuous action, simply use ^C.\n\n/Available actions/\n\n[@compile@] Compile the project. Targets of the compilation are main files (in case of executable) and exposed modules (in case of library).\n\n[@fullcompile@] Compile all hs files found in source directory. It is usefull to compile sources not declared in cabal. Since it is not possible to compile multiple modules with main, all modules with a main function are excluded.\n\n[@help@] Print all available action.\n\n[@clean@] Clean the directory containing .o and .hi files.\n\n[@test@] Launch all quickcheck properties and hunit tests of the project using test-framework. You can provide one or several regexps as argument and shaker will execute all tests matching one regexp. Quickcheck properties and HUnit tests are automatically discovered using GHC Api. All functions begining with “prop_” are considered as quickcheck properties and all functions of type Test.HUnit.Lang.Assertion and TestCase are considered as HUnit tests.\n\n[@test-module@] Same as test but test-module takes one or several module patterns as arguments.\n\n[@quit@] Exit the application. You can also use ^C or ^D to exit shaker.\n\n/Examples with interactive prompt/\n\n[@% compile@] Simply compile the project\n\n[@% clean compile@] Clean and compile the project\n\n[@% ~compile@] Switch to continuous mode and will compile the project when sources are modified.\n\n[@% ~clean compile@] Switch to continuous mode and will clean and compile the project when sources are modified.\n\n[@% test@] Execute all tests in the project\n\n[@% test prop_.*@] Execute all quickcheck properties of the project.\n\n[@% test testExecute.* testFilter.* @] Execute all tests matching testExecute.* or testFilter.*\n\n[@% test-module Regex Refle@] Launch all tests in modules matching Regex.* or Refle.*\n\n/Examples with command-line/\n\n[@% shaker fullcompile@] Launch shaker, execute the fullcompile action and give back the control.\n\n[@% shaker \\\"~fullcompile\\\" @] Launch shaker, continuously execute the fullcompile action until shaker is interrupted.\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
        ];
        buildable = true;
      };
      exes = {
        "shaker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }
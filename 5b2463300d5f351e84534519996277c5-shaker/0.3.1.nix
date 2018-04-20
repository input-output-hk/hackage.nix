{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shaker";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Anthonin Bonnefoy";
        maintainer = "anthonin.bonnefoy@gmail.com";
        author = "Anthonin Bonnefoy";
        homepage = "http://github.com/bonnefoa/Shaker";
        url = "";
        synopsis = "simple and interactive command-line build tool";
        description = "Shaker is a build tool which allow to compile an haskell project with some features like continuous action similar to SBT.\n\nFor the moment, all configuration are made via cabal. Shaker will read cabal configuration to discover source directories, compilation options and targets to compile.\n\n/Usage/\n\nThe cabal configuration file should be generated beforehand with /runhaskell Setup.hs configure/. If you change your cabal configuration, you need to recreate the configuration file.\n\n/Execution/\n\nIn the root of your haskell project, launch shaker. An interactive prompt will allow you to execute differents action.\n\n/Action execution/\n\n[@Simple Execution@] An action can be launched normally, by entering the action name\n\n[@Multiple action execution@] You can specify multiple action to execute simply by separating action by spaces.\n\n[@Continuous Action@] A continuous action will execute the action when a changement on files has been detected.\nEvery action are elligible to continuous action, you simply need to prefix them with '~'\n\n/Available actions/\n\n[@Compile@] Compile the project. Targets of the compilation are main file (in case of executable) or exposed modules (in case of library).\n\n[@FullCompile@] Compile all hs files found in source directory. It is usefull to compile test sources.\n\n[@Clean@] Clean the directory containing .o and .hi files.\n\n[@QuickCheck@] Launch all QuickCheck properties of the project.\n\n[@IQuickCheck@] Intelligent QuickCheck launch. Only launch necessary properties (beta).\n\n[@HUnit@] Launch all HUnit tests of the project.\n\n[@IHUnit@] Intelligent HUnit launch. Only launch necessary tests (beta).\n\n[@Quit@] Exit the application.\n\n/Examples/\n\n[@% Compile@] Simply compile the project\n\n[@% Clean Compile@] Clean and compile the project\n\n[@% ~Compile@] Switch to continuous mode and will compile the project when sources are modified.\n\n[@% ~Clean Compile@] Switch to continuous mode and will clean and compile the project when sources are modified.";
        buildType = "Custom";
      };
      components = {
        shaker = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.haskeline
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.regex-posix
            hsPkgs.old-time
            hsPkgs.bytestring
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
          ];
        };
        exes = {
          shaker = {
            depends  = [
              hsPkgs.base
              hsPkgs.shaker
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.regex-posix
              hsPkgs.old-time
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.shaker
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.haskeline
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.regex-posix
              hsPkgs.old-time
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }
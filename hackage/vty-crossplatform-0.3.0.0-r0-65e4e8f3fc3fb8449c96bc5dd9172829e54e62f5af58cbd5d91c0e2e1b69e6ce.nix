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
    flags = { demos = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "vty-crossplatform"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Jonathan Daugherty";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "";
      url = "";
      synopsis = "Cross-platform support for Vty";
      description = "This package provides a generic interface for multiple\nVty platforms in one package so you don't have to\nconditionally depend on them in your cabal file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ] ++ (if system.isOsx
          then [
            (hsPkgs."vty-unix" or (errorHandler.buildDepError "vty-unix"))
          ]
          else if system.isLinux
            then [
              (hsPkgs."vty-unix" or (errorHandler.buildDepError "vty-unix"))
            ]
            else if system.isFreebsd || system.isOpenbsd || system.isNetbsd || system.isDragonFly
              then [
                (hsPkgs."vty-unix" or (errorHandler.buildDepError "vty-unix"))
              ]
              else if system.isSolaris || system.isAix || system.isHPUX || system.isIRIX || system.isHurd
                then [
                  (hsPkgs."vty-unix" or (errorHandler.buildDepError "vty-unix"))
                ]
                else if system.isWindows
                  then [
                    (hsPkgs."vty-windows" or (errorHandler.buildDepError "vty-windows"))
                  ]
                  else [
                    (hsPkgs."unknown-vty-build-platform" or (errorHandler.buildDepError "unknown-vty-build-platform"))
                  ]);
        buildable = true;
      };
      exes = {
        "vty-rogue-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-event-echo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-mode-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-interactive-terminal-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }
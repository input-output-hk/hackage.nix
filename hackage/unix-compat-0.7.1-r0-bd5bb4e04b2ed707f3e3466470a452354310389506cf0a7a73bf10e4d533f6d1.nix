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
    flags = { old-time = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unix-compat"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "https://github.com/haskell-pkg-janitors";
      author = "Björn Bringert, Duncan Coutts, Jacob Stanley, Bryan O'Sullivan";
      homepage = "https://github.com/haskell-pkg-janitors/unix-compat";
      url = "";
      synopsis = "Portable POSIX-compatibility layer.";
      description = "This package provides portable implementations of parts\nof the unix package. This package re-exports the unix\npackage when available. When it isn't available,\nportable implementations are used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (if flags.old-time
            then [
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ] ++ [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ])
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."msvcrt" or (errorHandler.sysDepError "msvcrt"));
        buildable = true;
      };
      tests = {
        "unix-compat-testsuite" = {
          depends = [
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ] ++ (if system.isWindows
            then if flags.old-time
              then [
                (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              ] ++ [
                (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
              else [
                (hsPkgs."time" or (errorHandler.buildDepError "time"))
                (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]);
          buildable = true;
        };
      };
    };
  }
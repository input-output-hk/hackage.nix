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
    flags = { bin = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "unix-recursive"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Marek Fajkus";
      maintainer = "Marek Fajkus <marek.faj@gmail.com>";
      author = "Marek Fajkus <marek.faj@gmail.com>";
      homepage = "https://github.com/turboMaCk/unix-recursive";
      url = "";
      synopsis = "Fast and flexible primitives for recursive file system IO on Posix systems";
      description = "Blazingly fast functions for recursive file system operations.\nUtilizing lazy IO for constant space & computation efficiant bindigns to Posix dirstream.h api.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "dir-traverse-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          ];
          buildable = if !flags.bin then false else true;
        };
        "dirstream-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dirstream" or (errorHandler.buildDepError "dirstream"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if !flags.bin then false else true;
        };
        "unix-recursive-string-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix-recursive" or (errorHandler.buildDepError "unix-recursive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if !flags.bin then false else true;
        };
        "unix-recursive-bytestring-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix-recursive" or (errorHandler.buildDepError "unix-recursive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = if !flags.bin then false else true;
        };
      };
      tests = {
        "unix-recursive-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix-recursive" or (errorHandler.buildDepError "unix-recursive"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "unix-recursive-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix-recursive" or (errorHandler.buildDepError "unix-recursive"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          ];
          buildable = true;
        };
      };
    };
  }
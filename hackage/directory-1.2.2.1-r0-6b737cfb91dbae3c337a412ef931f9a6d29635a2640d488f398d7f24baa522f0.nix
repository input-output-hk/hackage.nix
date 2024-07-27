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
      specVersion = "1.10";
      identifier = { name = "directory"; version = "1.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Platform-agnostic library for filesystem operations";
      description = "This library provides a basic set of operations for manipulating files and\ndirectories in a portable way.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.python.components.exes.python or (pkgs.pkgsBuildBuild.python or (errorHandler.buildToolDepError "python:python")))
            (hsPkgs.pkgsBuildBuild.which.components.exes.which or (pkgs.pkgsBuildBuild.which or (errorHandler.buildToolDepError "which:which")))
          ];
          buildable = true;
        };
      };
    };
  }
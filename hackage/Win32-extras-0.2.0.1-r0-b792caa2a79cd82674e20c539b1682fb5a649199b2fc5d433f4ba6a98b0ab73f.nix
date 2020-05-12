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
      identifier = { name = "Win32-extras"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 shelarcy";
      maintainer = "shelarcy@gmail.com";
      author = "shelarcy";
      homepage = "http://hub.darcs.net/shelarcy/Win32-extras/";
      url = "";
      synopsis = "Provides missing Win32 API";
      description = "This package provides missing features of Win32 package.\n\nThis should be part of Win32 package. But it seems that Win32 package is not active development now.\nSo, I made a separated package for solving today problem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          ];
        libs = [
          (pkgs."msimg32" or (errorHandler.sysDepError "msimg32"))
          (pkgs."imm32" or (errorHandler.sysDepError "imm32"))
          ];
        buildable = true;
        };
      };
    }
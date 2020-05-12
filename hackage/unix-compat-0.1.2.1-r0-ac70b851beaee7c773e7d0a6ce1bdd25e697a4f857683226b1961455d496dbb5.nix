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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "unix-compat"; version = "0.1.2.1"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "bjorn@bringert.net";
      author = "";
      homepage = "";
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
          then if flags.split-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
        };
      };
    }
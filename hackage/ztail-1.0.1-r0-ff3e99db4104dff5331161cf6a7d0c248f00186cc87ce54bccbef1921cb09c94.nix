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
    flags = { inotify = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ztail"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Multi-file, colored, filtered log tailer.";
      description = "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ztail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (pkgs.lib).optional (flags.inotify) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"));
          buildable = true;
          };
        };
      };
    }
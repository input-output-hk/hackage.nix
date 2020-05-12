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
      identifier = { name = "tagged-timers"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "http://github.com/ucsd-progsys/tagged-timers";
      url = "";
      synopsis = "Simple wrappers for timing IO actions (single-threaded)";
      description = "Library for tagging IO actions and getting logs of total\ntime spent per tag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }
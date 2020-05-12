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
      identifier = { name = "watcher"; version = "0.0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@so8r.es";
      author = "So8res";
      homepage = "";
      url = "";
      synopsis = "Opinionated filesystem watcher";
      description = "A filesystem watcher. Triggers added/changed/removed events\nwhen the filesystem changes. Can cache in an SQL database\nand bring itself back up to date after long periods of\ndowntime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          ];
        buildable = true;
        };
      };
    }
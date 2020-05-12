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
      specVersion = "1.14";
      identifier = { name = "watcher"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@so8r.es";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Opinionated filesystem watcher.";
      description = "A thin opinionated wrapper around INotify. Fires\nAdded/Changed/Moved/Removed events on files, and that's it.\nWatches (only files) recursively on a given directory.\nDesigned for simple filesystem watchers that don't want to mess\nwith INotify. Inherits all of INotify's limitations surrounding\nmoved files: Events are not fired for overwritten files nor for\nfiles moved out of the watched directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            ];
          buildable = true;
          };
        };
      };
    }
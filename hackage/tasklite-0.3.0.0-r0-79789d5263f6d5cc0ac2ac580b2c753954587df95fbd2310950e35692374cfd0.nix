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
      specVersion = "2.2";
      identifier = { name = "tasklite"; version = "0.3.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "Adrian Sieber";
      maintainer = "mail@adriansieber.com";
      author = "Adrian Sieber";
      homepage = "https://github.com/ad-si/TaskLite#readme";
      url = "";
      synopsis = "CLI task / todo list manager with SQLite backend";
      description = "TaskLite is a CLI task / todo list manager with a SQLite backend.\nIt is designed to be simple and easy to use,\nwhile still providing a powerful interface for managing tasks.\nIt's heavily inspired by Taskwarrior and stems from my personal frustration\nwith some of its design decisions.\nCheck out https://tasklite.org/differences_taskwarrior\nfor a full comparison.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tasklite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."tasklite-core" or (errorHandler.buildDepError "tasklite-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tasklite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."tasklite-core" or (errorHandler.buildDepError "tasklite-core"))
          ];
          buildable = true;
        };
      };
    };
  }
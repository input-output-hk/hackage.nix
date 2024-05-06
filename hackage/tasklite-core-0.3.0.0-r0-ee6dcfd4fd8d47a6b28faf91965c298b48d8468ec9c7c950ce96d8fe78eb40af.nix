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
      identifier = { name = "tasklite-core"; version = "0.3.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."airgql" or (errorHandler.buildDepError "airgql"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."editor-open" or (errorHandler.buildDepError "editor-open"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fuzzily" or (errorHandler.buildDepError "fuzzily"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
          (hsPkgs."iso8601-duration" or (errorHandler.buildDepError "iso8601-duration"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."portable-lines" or (errorHandler.buildDepError "portable-lines"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
          (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."simple-sql-parser" or (errorHandler.buildDepError "simple-sql-parser"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."ulid" or (errorHandler.buildDepError "ulid"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "tasklite-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."tasklite-core" or (errorHandler.buildDepError "tasklite-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "tasklite-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = true;
        };
      };
    };
  }
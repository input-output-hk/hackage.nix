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
      specVersion = "1.18";
      identifier = { name = "task-distribution"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Axel Mannhardt";
      maintainer = "7a3ggptwts@snkmail.com";
      author = "Axel Mannhardt";
      homepage = "http://github.com/michaxm/task-distribution#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."packman" or (errorHandler.buildDepError "packman"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
          (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      exes = {
        "slave" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."task-distribution" or (errorHandler.buildDepError "task-distribution"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."strings" or (errorHandler.buildDepError "strings"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."task-distribution" or (errorHandler.buildDepError "task-distribution"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."strings" or (errorHandler.buildDepError "strings"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "task-distribution-object-code-remote" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
            ];
          buildable = true;
          };
        "run-demo-task" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "test-visit-performance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-node-matching" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."task-distribution" or (errorHandler.buildDepError "task-distribution"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."packman" or (errorHandler.buildDepError "packman"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-simplelocalnet" or (errorHandler.buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hadoop-rpc" or (errorHandler.buildDepError "hadoop-rpc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            ];
          buildable = true;
          };
        };
      };
    }
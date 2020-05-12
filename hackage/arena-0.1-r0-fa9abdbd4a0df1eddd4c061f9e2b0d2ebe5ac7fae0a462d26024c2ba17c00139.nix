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
      specVersion = "1.22";
      identifier = { name = "arena"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2016 davean";
      maintainer = "davean <davean@xkcd.com>";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "A journaled data store";
      description = "@arena@ provides durable storage of data and summaries of that data.\nOn insert, data is written to a journal. Each piece of data is added to a running summary of the current journal. When the summary indicates the correct amount of data has accumulated, the journal data is moved, as a block accompanied by its summary, to long-term storage. The data type, summary type, and accumulation policy are configurable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."persistent-vector" or (errorHandler.buildDepError "persistent-vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arena" or (errorHandler.buildDepError "arena"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arena" or (errorHandler.buildDepError "arena"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arena" or (errorHandler.buildDepError "arena"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      };
    }
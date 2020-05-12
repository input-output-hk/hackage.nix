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
      identifier = { name = "matterhorn"; version = "40400.0.0"; };
      license = "BSD-3-Clause";
      copyright = "©2016-2017 AUTHORS.txt";
      maintainer = "matterhorn@galois.com";
      author = "matterhorn@galois.com";
      homepage = "";
      url = "";
      synopsis = "Terminal client for the Mattermost chat system";
      description = "This is a terminal client for the Mattermost chat\nsystem. Please see the README for a list of\nfeatures and information on getting started.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "matterhorn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mattermost-api" or (errorHandler.buildDepError "mattermost-api"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."aspell-pipe" or (errorHandler.buildDepError "aspell-pipe"))
            (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test_messages" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
            (hsPkgs."mattermost-api" or (errorHandler.buildDepError "mattermost-api"))
            (hsPkgs."mattermost-api-qc" or (errorHandler.buildDepError "mattermost-api-qc"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Unique" or (errorHandler.buildDepError "Unique"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            ];
          buildable = true;
          };
        };
      };
    }
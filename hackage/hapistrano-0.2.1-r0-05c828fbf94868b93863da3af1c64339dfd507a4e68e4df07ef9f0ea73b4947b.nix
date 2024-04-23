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
      identifier = { name = "hapistrano"; version = "0.2.1"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/hapistrano";
      url = "";
      synopsis = "A deployment library for Haskell applications";
      description = "\nHapistrano makes it easy to reliably deploy Haskell applications\nto a server.\n\nFollowing popular libraries like Ruby's <http://capistranorb.com/\nCapistrano>, Hapistrano does the work of building the application\nwith dependencies into a distinct folder, and then atomically moves\na symlink to the latest complete build.\n\nThis allows for atomic switchovers to new application code after the\nbuild is complete. Rollback is even simpler, since Hapistrano can\njust point the `current` symlink to the previous release.\n\nSee <https://github.com/stackbuilders/hapistrano the project readme on GitHub>\nfor more information.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "hap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hapistrano" or (errorHandler.buildDepError "hapistrano"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hapistrano-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hapistrano" or (errorHandler.buildDepError "hapistrano"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }
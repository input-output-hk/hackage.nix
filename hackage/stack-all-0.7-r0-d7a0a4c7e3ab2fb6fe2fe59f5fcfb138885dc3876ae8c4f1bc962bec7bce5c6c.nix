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
    flags = { aeson1 = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "stack-all"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "2020-2025  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/stack-all";
      url = "";
      synopsis = "CLI tool for building over Stackage major versions";
      description = "Stack-all is a tool for stack building of a Haskell project\nacross multiple Stackage major LTS versions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stack-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ pkgs.lib.optional (flags.aeson1) (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"));
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "git-all"; version = "1.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/git-all";
      url = "";
      synopsis = "Determine which Git repositories need actions to be taken";
      description = "A utility for determining which Git repositories need actions to be\ntaken within them.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }
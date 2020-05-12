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
      specVersion = "1.8";
      identifier = { name = "rehoo"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/rehoo";
      url = "";
      synopsis = "Rebuild default.hoo from many .hoo files in the current directory";
      description = "Rebuild default.hoo from many .hoo files in the current directory";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rehoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            ];
          buildable = true;
          };
        };
      };
    }
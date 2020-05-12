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
    flags = { generate = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal-nirvana"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/cabal-nirvana";
      url = "";
      synopsis = "Avoid Cabal dependency hell by constraining to known good versions.";
      description = "This tool takes a list of known compatible versions of libraries and forces them to be used. This should bypass a lot of cabal dependency hell, thereby inducing nirvana.\n\nOriginally, the idea was to use constraints in the Cabal config file to force this, but unfortunately there's a bug in cabal-install which prevents that from being possible. Instead, this tool now filters the list of available packages available.\n\nThe simplest usage is to just run cabal-nirvana. This will perform a few steps:\n\n1. Perform a cabal update\n\n2. Download the most recent version of the blessed package list.\n\n3. Modify the list of packages downloaded in the cabal update by the list of blessed packages.\n\nIf you want to leave Nirvana, just perform a normal cabal update.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-nirvana" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "cabal-nirvana-generate" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."packdeps" or (errorHandler.buildDepError "packdeps"))
            ];
          buildable = if flags.generate then true else false;
          };
        };
      };
    }
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
      identifier = { name = "cabal-nirvana"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/cabal-nirvana";
      url = "";
      synopsis = "Avoid Cabal dependency hell by constraining to known good versions.";
      description = "This tool takes a list of known compatible versions of libraries and forces them to be used, via constraints in your cabal config file. This should bypass a lot of cabal dependency hell, thereby inducing nirvana.";
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
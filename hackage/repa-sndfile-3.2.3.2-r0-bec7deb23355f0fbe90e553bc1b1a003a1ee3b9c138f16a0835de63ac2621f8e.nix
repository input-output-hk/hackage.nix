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
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "repa-sndfile"; version = "3.2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<8c6794b6@gmail.com>";
      author = "<8c6794b6@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Reading and writing sound files with repa arrays";
      description = "Add supporting of reading and writing audio data with repa arrays in\nvarious format.\n\nThe code is using libsndfile and hsndfile package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
        ] ++ pkgs.lib.optionals (flags.example) [
          (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "rw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."repa-sndfile" or (errorHandler.buildDepError "repa-sndfile"))
          ];
          buildable = if flags.example then true else false;
        };
        "gensine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-sndfile" or (errorHandler.buildDepError "repa-sndfile"))
          ];
          buildable = if flags.example then true else false;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."repa-sndfile" or (errorHandler.buildDepError "repa-sndfile"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "3.0";
      identifier = { name = "lambdasound"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2023 Simon Reitinger";
      maintainer = "simre4775@gmail.com";
      author = "Simon Reitinger";
      homepage = "https://github.com/Simre1/lambdasound";
      url = "";
      synopsis = "A libary for generating low-level sounds with high-level combinators";
      description = "'lambdasound' can generate all kinds of sounds, play them and save them as wav or pcm data.\nSound can be manipulated in both a low and high-level way. It is possible to \noperate on the samples of a sound. However, there are also higher-level combinators \nfor various tasks, e.g. to facilitate sequential and parallel playing of sounds or to change the duration of a sound.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring-to-vector" or (errorHandler.buildDepError "bytestring-to-vector"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."proteaaudio-sdl" or (errorHandler.buildDepError "proteaaudio-sdl"))
          (hsPkgs."wave" or (errorHandler.buildDepError "wave"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdasound" or (errorHandler.buildDepError "lambdasound"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdasound" or (errorHandler.buildDepError "lambdasound"))
            ];
          buildable = true;
          };
        "lambdasound-profile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdasound" or (errorHandler.buildDepError "lambdasound"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lambdasound-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdasound" or (errorHandler.buildDepError "lambdasound"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."falsify" or (errorHandler.buildDepError "falsify"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "lambdasound-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lambdasound" or (errorHandler.buildDepError "lambdasound"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            ];
          buildable = true;
          };
        };
      };
    }
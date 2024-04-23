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
      specVersion = "2.4";
      identifier = { name = "unique-lang"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/unique";
      url = "";
      synopsis = "Esoteric programming language where each number can only appear once";
      description = "Unique is an esoteric programming language where each number can only occur once. Every variable in Unique is stored in a single data structure: a stack of integer arrays. You can find a description of how the language works [here](https://owenbechtel.com/unique).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "unique" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          ];
          buildable = true;
        };
      };
    };
  }
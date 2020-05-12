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
      identifier = { name = "result"; version = "0.2.5.1"; };
      license = "MIT";
      copyright = "2016 Sam Rijs";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-result";
      url = "";
      synopsis = "Encode success or at least one error";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."result" or (errorHandler.buildDepError "result"))
            ];
          buildable = true;
          };
        };
      };
    }
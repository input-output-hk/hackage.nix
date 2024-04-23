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
      identifier = { name = "oops-examples"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2023 John Ky\n2019 Tom Harding";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://www.github.com/haskell-works/oops";
      url = "";
      synopsis = "Oops examples";
      description = "Oops examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."oops" or (errorHandler.buildDepError "oops"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
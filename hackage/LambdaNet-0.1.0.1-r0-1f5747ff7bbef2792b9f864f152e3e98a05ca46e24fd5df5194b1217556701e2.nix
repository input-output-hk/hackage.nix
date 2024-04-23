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
      identifier = { name = "LambdaNet"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2014";
      maintainer = "Joseph Barrow <jdb7hw@virginia.edu>";
      author = "Brent Baumgartner, Alex Thomas, Harang Ju, Joseph Barrow";
      homepage = "";
      url = "";
      synopsis = "A configurable and extensible neural network library";
      description = "LambdaNet is an artificial neural network library that allows\nusers to compose their own networks from function primitives.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }
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
      specVersion = "1.12";
      identifier = { name = "benign-timestats"; version = "0.1.0"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "arnaud@spiwack.net";
      author = "Arnaud Spiwack";
      homepage = "https://github.com/aspiwack/haskell-benign#readme";
      url = "";
      synopsis = "A Benign backend for the Timestats library";
      description = "See the Benign library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."benign" or (errorHandler.buildDepError "benign"))
          (hsPkgs."timestats" or (errorHandler.buildDepError "timestats"))
        ];
        buildable = true;
      };
    };
  }
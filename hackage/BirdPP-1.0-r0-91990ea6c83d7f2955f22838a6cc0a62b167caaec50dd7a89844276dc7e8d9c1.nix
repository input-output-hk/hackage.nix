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
      specVersion = "1.6";
      identifier = { name = "BirdPP"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "seanmcl@gmail.com";
      author = "Sean McLaughlin";
      homepage = "";
      url = "";
      synopsis = "A preprocessor for Bird-style Literate Haskell comments with Haddock markup.";
      description = "Literate preprocessor that allows intuitive Haddock comments.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "BirdPP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
          buildable = true;
        };
      };
    };
  }
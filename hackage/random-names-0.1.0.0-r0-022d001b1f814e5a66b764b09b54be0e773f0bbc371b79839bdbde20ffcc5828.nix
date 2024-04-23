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
      identifier = { name = "random-names"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000 <aiya000.develop@gmail.com>";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-random-names";
      url = "";
      synopsis = "Expose Random and Arbitrary instances";
      description = "Random, Arbitrary instances for naming cases (PascalCase, camelCase, etc)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }
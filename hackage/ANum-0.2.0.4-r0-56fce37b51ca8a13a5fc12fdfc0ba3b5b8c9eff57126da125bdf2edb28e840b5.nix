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
      identifier = { name = "ANum"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2013 - 2025";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/ANum#readme";
      url = "";
      synopsis = "Num instance for Applicatives provided via the ANum newtype";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "ANum-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ANum" or (errorHandler.buildDepError "ANum"))
          ];
          buildable = true;
        };
      };
    };
  }
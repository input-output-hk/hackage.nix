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
      identifier = { name = "aeson-single-field"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ed@wastell.co.uk";
      author = "Ed Wastell";
      homepage = "";
      url = "";
      synopsis = "Conveniently wrap a single value in a record when encoding to and from JSON";
      description = "This package exports a single type (`SingleField`) that allows one to conveniently wrap a single value in a record for use with JSON.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-single-field" or (errorHandler.buildDepError "aeson-single-field"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }
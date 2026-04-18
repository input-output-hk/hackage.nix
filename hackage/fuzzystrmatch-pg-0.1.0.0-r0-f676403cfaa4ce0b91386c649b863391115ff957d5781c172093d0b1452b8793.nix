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
      specVersion = "1.18";
      identifier = { name = "fuzzystrmatch-pg"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taimoor Zaeem <taimoorzaeem@gmail.com>";
      author = "Taimoor Zaeem";
      homepage = "https://github.com/taimoorzaeem/fuzzystrmatch-pg";
      url = "";
      synopsis = "Determine string similarities and distance";
      description = "Haskell implementation of PostgreSQL fuzzystrmatch\nextension";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fuzzystrmatch-pg" or (errorHandler.buildDepError "fuzzystrmatch-pg"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
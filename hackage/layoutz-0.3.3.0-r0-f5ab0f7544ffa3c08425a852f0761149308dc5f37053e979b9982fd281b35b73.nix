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
      identifier = { name = "layoutz"; version = "0.3.3.0"; };
      license = "Apache-2.0";
      copyright = "2025 Matthieu Court";
      maintainer = "matthieu.court@protonmail.com";
      author = "Matthieu Court";
      homepage = "https://github.com/mattlianje/layoutz";
      url = "";
      synopsis = "Simple, beautiful CLI output";
      description = "Zero-dep, compositional terminal output";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "inline-bar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
          ];
          buildable = true;
        };
        "inline-loading-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
          ];
          buildable = true;
        };
        "showcase-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
          ];
          buildable = true;
        };
      };
      tests = {
        "layoutz-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."layoutz" or (errorHandler.buildDepError "layoutz"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }
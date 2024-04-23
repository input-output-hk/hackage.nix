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
      identifier = { name = "valida-base"; version = "0.1.1"; };
      license = "MIT";
      copyright = "TotallyNotChase";
      maintainer = "totallynotchase42@gmail.com";
      author = "Chase";
      homepage = "https://github.com/TotallyNotChase/valida-base#readme";
      url = "";
      synopsis = "Simple applicative validation for product types, batteries included!";
      description = "This is a zero dependency version of the valida package. It is equivalent to valida == 0.1.0. Check out the README at github <https://github.com/TotallyNotChase/valida-base#readme>!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "valida-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."valida-base" or (errorHandler.buildDepError "valida-base"))
          ];
          buildable = true;
        };
      };
    };
  }
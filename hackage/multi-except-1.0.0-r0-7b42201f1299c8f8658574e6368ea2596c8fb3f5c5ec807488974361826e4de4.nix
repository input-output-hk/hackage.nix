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
      identifier = { name = "multi-except"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "owen@owen.cafe";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/multi-except";
      url = "";
      synopsis = "Multiple Exceptions";
      description = "Report multiple errors, or a single correct value.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      sublibs = {
        "semigroupoid-instances" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multi-except" or (errorHandler.buildDepError "multi-except"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multi-except" or (errorHandler.buildDepError "multi-except"))
            (hsPkgs."multi-except".components.sublibs.semigroupoid-instances or (errorHandler.buildDepError "multi-except:semigroupoid-instances"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
          buildable = true;
        };
      };
    };
  }
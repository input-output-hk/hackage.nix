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
      identifier = { name = "require-callstack"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "parsonsmatt@gmail.com";
      author = "parsonsmatt";
      homepage = "";
      url = "";
      synopsis = "Propagate HasCallStack with constraints";
      description = "See the README for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "require-callstack-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."require-callstack" or (errorHandler.buildDepError "require-callstack"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "1.8";
      identifier = { name = "base-compat"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "A compatibility layer for base";
      description = "Ban CPP from your code.  See the README for what is covered:\n<https://github.com/sol/base-compat#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
            ];
          buildable = true;
          };
        };
      };
    }
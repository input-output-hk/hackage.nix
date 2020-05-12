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
      identifier = { name = "hsPID"; version = "0.1"; };
      license = "LGPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/hsPID#readme";
      url = "";
      synopsis = "PID control loop";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/hsPID#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "hsPID-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsPID" or (errorHandler.buildDepError "hsPID"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }
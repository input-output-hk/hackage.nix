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
      identifier = { name = "debug-time"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Luka Horvat";
      maintainer = "example@example.com";
      author = "Luka Horvat";
      homepage = "http://github.com/LukaHorvat/debug-time#readme";
      url = "";
      synopsis = "Debug.Trace equivalent for timing computations";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debug-time" or (errorHandler.buildDepError "debug-time"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "blindpass"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jonathan@jlamothe.net";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/blindpass#readme";
      url = "";
      synopsis = "Password entry tool";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/blindpass#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "blindpass" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blindpass" or (errorHandler.buildDepError "blindpass"))
          ];
          buildable = true;
        };
      };
      tests = {
        "blindpass-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blindpass" or (errorHandler.buildDepError "blindpass"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }
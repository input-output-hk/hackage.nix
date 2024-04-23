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
      identifier = { name = "easy-args"; version = "0.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jonathan@jlamothe.net";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/easy-args#readme";
      url = "";
      synopsis = "Parses command line arguments";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/easy-args#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
        ];
        buildable = true;
      };
      tests = {
        "easy-args-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easy-args" or (errorHandler.buildDepError "easy-args"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }
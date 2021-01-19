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
      identifier = { name = "prime"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2021 Jonathan Lamothe";
      maintainer = "jonathan@jlamothe.net";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/prime#readme";
      url = "";
      synopsis = "prime number tools";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/prime#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "prime-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prime" or (errorHandler.buildDepError "prime"))
            ];
          buildable = true;
          };
        };
      };
    }
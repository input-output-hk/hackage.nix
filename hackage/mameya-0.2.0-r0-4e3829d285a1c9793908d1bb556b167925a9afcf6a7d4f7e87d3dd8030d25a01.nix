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
      identifier = { name = "mameya"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2018 bururabit";
      maintainer = "bururabit@gmail.com";
      author = "bururabit";
      homepage = "https://github.com/bururabit/mameya#readme";
      url = "";
      synopsis = "Static Website Generator in Haskell";
      description = "Please see the README on GitHub at <https://github.com/bururabit/mameya#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "mameya" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mameya" or (errorHandler.buildDepError "mameya"))
          ];
          buildable = true;
        };
      };
      tests = {
        "mameya-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mameya" or (errorHandler.buildDepError "mameya"))
          ];
          buildable = true;
        };
      };
    };
  }
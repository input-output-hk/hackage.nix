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
      identifier = { name = "yaya-test"; version = "0.3.1.3"; };
      license = "AGPL-3.0-or-later";
      copyright = "2017 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Test suites for `yaya`.";
      description = "This package should not be depended on by anything.";
      buildType = "Simple";
    };
    components = {
      tests = {
        "yaya-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
            (hsPkgs."yaya-hedgehog" or (errorHandler.buildDepError "yaya-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }
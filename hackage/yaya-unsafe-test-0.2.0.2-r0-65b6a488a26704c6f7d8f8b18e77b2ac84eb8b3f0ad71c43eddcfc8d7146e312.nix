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
      identifier = { name = "yaya-unsafe-test"; version = "0.2.0.2"; };
      license = "AGPL-3.0-or-later";
      copyright = "2017 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Test suites for `yaya-unsafe`.";
      description = "This package should not be depended on by anything.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "yaya-unsafe-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
            (hsPkgs."yaya-hedgehog" or (errorHandler.buildDepError "yaya-hedgehog"))
            (hsPkgs."yaya-unsafe" or (errorHandler.buildDepError "yaya-unsafe"))
            ];
          buildable = true;
          };
        };
      };
    }
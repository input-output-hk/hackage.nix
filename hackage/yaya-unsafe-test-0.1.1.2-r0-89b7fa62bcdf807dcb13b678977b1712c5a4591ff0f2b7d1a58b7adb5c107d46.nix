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
      identifier = { name = "yaya-unsafe-test"; version = "0.1.1.2"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Greg Pfeil";
      maintainer = "greg@technomadic.org";
      author = "Greg Pfeil";
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
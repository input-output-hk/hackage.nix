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
      identifier = { name = "hedgehog-fakedata"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/hedgehog-fakedata#readme";
      url = "";
      synopsis = "Use 'fakedata' with 'hedgehog'";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fakedata" or (errorHandler.buildDepError "fakedata"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog-fakedata" or (errorHandler.buildDepError "hedgehog-fakedata"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."fakedata" or (errorHandler.buildDepError "fakedata"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }
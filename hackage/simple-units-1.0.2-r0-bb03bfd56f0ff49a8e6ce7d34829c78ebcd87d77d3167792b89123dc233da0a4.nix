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
      identifier = { name = "simple-units"; version = "1.0.2"; };
      license = "MIT";
      copyright = "2019 Gustavo Roscoe";
      maintainer = "gustavo@gustavoroscoe.com";
      author = "Gustavo Roscoe";
      homepage = "https://github.com/groscoe/simple-units#readme";
      url = "";
      synopsis = "Simple arithmetic with SI units using type-checked dimensional analysis.";
      description = "Please see the README on GitHub at <https://github.com/groscoe/simple-units#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
        ];
        buildable = true;
      };
      tests = {
        "simple-units-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."simple-units" or (errorHandler.buildDepError "simple-units"))
          ];
          buildable = true;
        };
      };
    };
  }
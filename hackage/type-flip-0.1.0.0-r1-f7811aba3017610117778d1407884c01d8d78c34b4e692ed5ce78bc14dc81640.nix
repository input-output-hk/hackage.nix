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
      identifier = { name = "type-flip"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/type-flip#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/type-flip#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "type-flip-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-flip" or (errorHandler.buildDepError "type-flip"))
          ];
          buildable = true;
        };
      };
    };
  }
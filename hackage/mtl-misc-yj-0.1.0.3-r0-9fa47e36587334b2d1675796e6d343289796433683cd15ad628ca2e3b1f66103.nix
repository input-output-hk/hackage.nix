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
      identifier = { name = "mtl-misc-yj"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/mtl-misc-yj#readme";
      url = "";
      synopsis = "tribial tools about mtl";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/mtl-misc-yj#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "mtl-misc-yj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
          ];
          buildable = true;
        };
      };
    };
  }
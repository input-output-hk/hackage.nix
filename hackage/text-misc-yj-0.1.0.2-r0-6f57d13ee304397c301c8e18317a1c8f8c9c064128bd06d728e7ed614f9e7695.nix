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
      identifier = { name = "text-misc-yj"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/text-misc-yj#readme";
      url = "";
      synopsis = "tribial tools about text";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/test_haskell/text-misc-yj#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "text-misc-yj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-misc-yj" or (errorHandler.buildDepError "text-misc-yj"))
          ];
          buildable = true;
        };
      };
    };
  }
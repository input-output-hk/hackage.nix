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
      identifier = { name = "text-misc-yj"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@google.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/text-misc-yj#readme";
      url = "";
      synopsis = "tribial tools about text";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/test_haskell/tree/master/themes/string/text-misc-yj#readme>";
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
        "try-text-misc-yj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl-misc-yj" or (errorHandler.buildDepError "mtl-misc-yj"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."try-text-misc-yj" or (errorHandler.buildDepError "try-text-misc-yj"))
          ];
          buildable = true;
        };
      };
    };
  }
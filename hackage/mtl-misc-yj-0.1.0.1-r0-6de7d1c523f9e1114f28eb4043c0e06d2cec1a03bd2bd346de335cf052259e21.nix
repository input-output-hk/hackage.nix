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
      identifier = { name = "mtl-misc-yj"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/YoshikuniJujo/mtl-misc-yj#readme";
      url = "";
      synopsis = "tribial tools about mtl";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/test_haskell/tree/master/themes/monad/mtl-misc-yj#readme>";
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
        "try-monads-tf-misc-yj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."try-monads-tf-misc-yj" or (errorHandler.buildDepError "try-monads-tf-misc-yj"))
          ];
          buildable = true;
        };
      };
    };
  }
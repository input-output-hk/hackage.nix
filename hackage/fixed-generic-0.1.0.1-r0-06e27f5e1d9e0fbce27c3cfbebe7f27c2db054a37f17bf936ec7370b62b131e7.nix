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
      specVersion = "2.2";
      identifier = { name = "fixed-generic"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/fixed-generic#readme";
      url = "";
      synopsis = "Fixed-point number build on generic integral number";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/fixed-generic#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
        ];
        buildable = true;
      };
      tests = {
        "fixed-generic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fixed-generic" or (errorHandler.buildDepError "fixed-generic"))
            (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          ];
          buildable = true;
        };
      };
    };
  }
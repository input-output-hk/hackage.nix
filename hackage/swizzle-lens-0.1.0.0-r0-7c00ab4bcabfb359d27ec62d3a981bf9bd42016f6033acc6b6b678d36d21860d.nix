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
      identifier = { name = "swizzle-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/swizzle-lens#readme";
      url = "";
      synopsis = "Swizzle lens functions";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/swizzle-lens#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."swizzle" or (errorHandler.buildDepError "swizzle"))
          (hsPkgs."swizzle-set" or (errorHandler.buildDepError "swizzle-set"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "swizzle-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."swizzle" or (errorHandler.buildDepError "swizzle"))
            (hsPkgs."swizzle-lens" or (errorHandler.buildDepError "swizzle-lens"))
            (hsPkgs."swizzle-set" or (errorHandler.buildDepError "swizzle-set"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }
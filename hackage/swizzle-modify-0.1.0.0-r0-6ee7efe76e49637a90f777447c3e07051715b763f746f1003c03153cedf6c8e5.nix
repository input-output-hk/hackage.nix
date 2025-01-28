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
      identifier = { name = "swizzle-modify"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/swizzle-modify#readme";
      url = "";
      synopsis = "Swizzle modify functions";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/swizzle-modify#readme>";
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
        "swizzle-modify-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."swizzle" or (errorHandler.buildDepError "swizzle"))
            (hsPkgs."swizzle-modify" or (errorHandler.buildDepError "swizzle-modify"))
            (hsPkgs."swizzle-set" or (errorHandler.buildDepError "swizzle-set"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }
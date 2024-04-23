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
      identifier = { name = "fakepull"; version = "0.3.0.2"; };
      license = "Apache-2.0";
      copyright = "2020 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/haskell-fakepull#readme";
      url = "";
      synopsis = "Monad to pull from fake stream-like objects.";
      description = "See <https://github.com/igrep/haskell-fakepull#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "fakepull-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."fakepull" or (errorHandler.buildDepError "fakepull"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }
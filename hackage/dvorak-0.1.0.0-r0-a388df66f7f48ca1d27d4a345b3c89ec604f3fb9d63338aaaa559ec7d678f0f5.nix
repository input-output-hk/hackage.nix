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
      specVersion = "1.10";
      identifier = { name = "dvorak"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Kyle Van Berendonck, 2014";
      maintainer = "kvanberendonck@gmail.com";
      author = "Kyle Van Berendonck";
      homepage = "https://github.com/kvanberendonck/codec-dvorak";
      url = "";
      synopsis = "Dvorak encoding for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."dvorak" or (errorHandler.buildDepError "dvorak"))
          ];
          buildable = true;
        };
      };
    };
  }
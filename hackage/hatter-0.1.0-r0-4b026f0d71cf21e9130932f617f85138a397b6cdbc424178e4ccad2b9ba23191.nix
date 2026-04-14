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
      specVersion = "3.0";
      identifier = { name = "hatter"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2026 Jappie Klooster";
      maintainer = "hi@jappie.me";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/hatter#readme";
      url = "";
      synopsis = "Hatter: Native IOS and Android applications in haskell!";
      description = "It's like flutter but instead of dart, haskell!\n\nWrite native mobile apps in Haskell.\nThis works similar to react native where we have\ntight bindings on the existing UI frameworks\nprovided by android and IOS.\n\nThis project cross-compiles a Haskell library to Android (APK) and iOS (static library / IPA),\nwith a thin platform-native UI layer (Kotlin for Android, Swift for iOS).\nThere is support for android wear and wearOS as well,\nbecause I personally want to build apps for those. \nIOS and Android support was just a side effect.\n\nSupports native:\n\n+ android\n+ android wearable\n+ IOS\n+ WearOS (IOS on wearables)\n\nThe library fully controls the UI.\nThis is different from say Simplex chat where they call into the library to do Haskell from dirty java/swift code.\nThis library should've written all swift/java code you'll ever need,\nso you can focus on your sweet Haskell.\n\nNB: I uploaded this to hackage for the nice documentation, but I don't think this builds\nwith just cabal. You want to use the nix harness.\nAlthough I'd like to get cabal to build stuff like this eventually,\nthat's a really big undertaking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hatter" or (errorHandler.buildDepError "hatter"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }
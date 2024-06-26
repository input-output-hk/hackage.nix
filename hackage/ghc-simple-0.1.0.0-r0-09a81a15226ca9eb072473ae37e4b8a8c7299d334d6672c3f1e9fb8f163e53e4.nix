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
      identifier = { name = "ghc-simple"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Anton Ekblad";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/ghc-simple";
      url = "";
      synopsis = "Simplified interface to the GHC API.";
      description = "The GHC API is a great tool for working with Haskell code.\nUnfortunately, it's also fairly opaque and hard to get\nstarted with. This library abstracts away the intricacies\nof working with the GHC API, giving a general, no-nonsense\nway to extract highly optimized (or not, depending on your\nuse case) Core, STG, custom intermediate code, and other\ninformation from Haskell code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }
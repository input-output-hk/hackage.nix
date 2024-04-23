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
      identifier = { name = "yesod-gitrev"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/yesod-gitrev";
      url = "";
      synopsis = "A subsite for displaying git information.";
      description = "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-gitrev" or (errorHandler.buildDepError "yesod-gitrev"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "homotuple"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "2019 Kazuki Okamoto";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/kakkun61/tuple";
      url = "";
      synopsis = "Homotuple, all whose elements are the same type";
      description = "Homotuple, all whose elements are the same type";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
        ];
        buildable = true;
      };
    };
  }
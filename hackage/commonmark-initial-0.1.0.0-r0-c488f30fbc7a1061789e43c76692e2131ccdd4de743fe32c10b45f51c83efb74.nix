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
      identifier = { name = "commonmark-initial"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "Copyright (c) 2025, Henry Till";
      maintainer = "henrytill@gmail.com";
      author = "Henry Till";
      homepage = "https://github.com/henrytill/commonmark-initial";
      url = "";
      synopsis = "An initial encoding of the CommonMark language";
      description = "This library provides an initial encoding of the CommonMark language\nfor use with the [commonmark](https://hackage.haskell.org/package/commonmark)\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "commonmark-initial-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."dwergaz" or (errorHandler.buildDepError "dwergaz"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."commonmark-initial" or (errorHandler.buildDepError "commonmark-initial"))
          ];
          buildable = true;
        };
      };
    };
  }
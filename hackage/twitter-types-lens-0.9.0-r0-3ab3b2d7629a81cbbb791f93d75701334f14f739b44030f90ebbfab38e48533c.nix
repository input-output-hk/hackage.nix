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
      identifier = { name = "twitter-types-lens"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "taka@himura.jp";
      author = "Takahiro HIMURA";
      homepage = "https://github.com/himura/twitter-types";
      url = "";
      synopsis = "Twitter JSON types (lens powered)";
      description = "Please see the README on Github at <https://github.com/himura/twitter-types#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."twitter-types" or (errorHandler.buildDepError "twitter-types"))
        ];
        buildable = true;
      };
    };
  }
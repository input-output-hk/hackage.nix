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
      identifier = { name = "tdlib"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/tdlib#readme";
      url = "";
      synopsis = "complete binding to the Telegram Database Library";
      description = "Please see the README on GitHub at <https://github.com/poscat0x04/tdlib#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring-type" or (errorHandler.buildDepError "base64-bytestring-type"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tdlib-types" or (errorHandler.buildDepError "tdlib-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        libs = [ (pkgs."tdjson" or (errorHandler.sysDepError "tdjson")) ];
        buildable = true;
        };
      tests = {
        "tdlib-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring-type" or (errorHandler.buildDepError "base64-bytestring-type"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tdlib" or (errorHandler.buildDepError "tdlib"))
            (hsPkgs."tdlib-types" or (errorHandler.buildDepError "tdlib-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          libs = [ (pkgs."tdjson" or (errorHandler.sysDepError "tdjson")) ];
          buildable = true;
          };
        };
      };
    }
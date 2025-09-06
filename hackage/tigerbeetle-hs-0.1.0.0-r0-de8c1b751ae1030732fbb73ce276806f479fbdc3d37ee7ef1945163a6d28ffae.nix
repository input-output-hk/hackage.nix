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
      identifier = { name = "tigerbeetle-hs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "james@agentultra.com";
      author = "James King";
      homepage = "https://github.com/agentultra/tigerbeetle-hs#README";
      url = "";
      synopsis = "A Haskell client library for Tigerbeetle database";
      description = "Please see the README on GitHub at <https://github.com/agentultra/tigerbeetle-hs#README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = [
          (pkgconfPkgs."tb_client" or (errorHandler.pkgConfDepError "tb_client"))
        ];
        buildable = true;
      };
      exes = {
        "tigerbeetle-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tigerbeetle-hs" or (errorHandler.buildDepError "tigerbeetle-hs"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          libs = [
            (pkgs."tb_client" or (errorHandler.sysDepError "tb_client"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tigerbeetle-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tigerbeetle-hs" or (errorHandler.buildDepError "tigerbeetle-hs"))
          ];
          libs = [
            (pkgs."tb_client" or (errorHandler.sysDepError "tb_client"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "attoparsec-uri"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-uri#readme";
      url = "";
      synopsis = "URI parser / printer using attoparsec";
      description = "Please see the README on GitHub at <https://github.com/githubuser/purescript-iso#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-ip" or (errorHandler.buildDepError "attoparsec-ip"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytedump" or (errorHandler.buildDepError "bytedump"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "attoparsec-uri-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-ip" or (errorHandler.buildDepError "attoparsec-ip"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytedump" or (errorHandler.buildDepError "bytedump"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."purescript-iso" or (errorHandler.buildDepError "purescript-iso"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
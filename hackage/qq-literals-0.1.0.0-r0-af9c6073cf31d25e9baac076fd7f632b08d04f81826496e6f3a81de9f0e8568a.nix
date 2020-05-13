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
      identifier = { name = "qq-literals"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016-2017 Harry Garrood";
      maintainer = "harry@garrood.me";
      author = "Harry Garrood";
      homepage = "https://github.com/hdgarrood/qq-literals";
      url = "";
      synopsis = "Compile-time checked literal values via QuasiQuoters.";
      description = "qq-literals is a tiny Haskell library which gives you a way of easily\nconstructing QuasiQuoters for literals of any type a for which you can\nprovide a parsing function String -> Either String a.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "qq-literals-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qq-literals" or (errorHandler.buildDepError "qq-literals"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ];
          buildable = true;
          };
        };
      };
    }
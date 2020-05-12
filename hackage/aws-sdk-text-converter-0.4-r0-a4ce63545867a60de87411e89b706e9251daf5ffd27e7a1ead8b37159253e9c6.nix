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
      identifier = { name = "aws-sdk-text-converter"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusuke Nomura <yunomu@gmail.com>";
      author = "Yusuke Nomura <yunomu@gmail.com>";
      homepage = "https://github.com/yunomu/aws-sdk-text-converter";
      url = "";
      synopsis = "The text converter for aws-sdk.";
      description = "The text converter for aws-sdk.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
            (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }
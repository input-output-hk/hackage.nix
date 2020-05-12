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
      specVersion = "1.8";
      identifier = { name = "qm-interpolated-string"; version = "0.3.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Viacheslav Lotsmanov";
      maintainer = "Viacheslav Lotsmanov <lotsmanov89@gmail.com>";
      author = "Viacheslav Lotsmanov";
      homepage = "https://github.com/unclechu/haskell-qm-interpolated-string";
      url = "";
      synopsis = "Implementation of interpolated multiline strings";
      description = "Implementation of interpolated multiline strings\nthat ignores indentation and trailing whitespaces";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."qm-interpolated-string" or (errorHandler.buildDepError "qm-interpolated-string"))
            ];
          buildable = true;
          };
        };
      };
    }
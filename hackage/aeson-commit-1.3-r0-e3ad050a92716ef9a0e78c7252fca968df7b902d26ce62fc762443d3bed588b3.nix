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
      identifier = { name = "aeson-commit"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "2020 Cross Compass Ltd.";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Viktor Kronvall <viktor.kronvall@cross-compass.com>,\nJonas Carpay <jonascarpay@gmail.com>";
      homepage = "https://github.com/xc-jp/aeson-commit#readme";
      url = "";
      synopsis = "Parse Aeson data with commitment";
      description = "Commitment mechanism for @aeson@ parsers.\nCommitment means that if some initial parsing succeeds, subsequent failures are unrecoverable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-commit" or (errorHandler.buildDepError "aeson-commit"))
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
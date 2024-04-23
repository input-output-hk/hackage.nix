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
      identifier = { name = "powerqueue"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A flexible job queue with exchangeable backends";
      description = "A flexible job queue with exchangeable backends\n\nCurrent Queue (Persistence) Backends:\n\n* <https://hackage.haskell.org/package/powerqueue-levelmem LevelDB>\n* <https://hackage.haskell.org/package/powerqueue-sqs AWS SQS>\n\nCurrent Worker Backends:\n\n* <https://hackage.haskell.org/package/powerqueue-distributed TCP-Network Distributed>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
        ];
        buildable = true;
      };
      tests = {
        "powerqueue-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
          buildable = true;
        };
      };
    };
  }
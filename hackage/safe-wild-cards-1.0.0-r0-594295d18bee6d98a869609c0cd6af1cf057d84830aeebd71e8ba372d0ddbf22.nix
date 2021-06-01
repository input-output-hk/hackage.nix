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
      identifier = { name = "safe-wild-cards"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Monadfix <hi@monadfix.com>";
      author = "Artyom Kazak";
      homepage = "https://github.com/monadfix/safe-wild-cards";
      url = "";
      synopsis = "Use RecordWildCards safely";
      description = "@-XRecordWildCards@ is convenient, but sometimes you want to assert that\nyou have handled all fields of a record, and there is no easy way to do that.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe-wild-cards" or (errorHandler.buildDepError "safe-wild-cards"))
            ];
          buildable = true;
          };
        };
      };
    }
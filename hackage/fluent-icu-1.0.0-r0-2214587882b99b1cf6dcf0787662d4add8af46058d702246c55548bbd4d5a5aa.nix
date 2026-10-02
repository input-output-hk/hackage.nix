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
      identifier = { name = "fluent-icu"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "ICU backend for fluent";
      description = "ICU backend for <https://hackage.haskell.org/package/fluent fluent>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fluent" or (errorHandler.buildDepError "fluent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        pkgconfig = [
          (pkgconfPkgs."icu-i18n" or (errorHandler.pkgConfDepError "icu-i18n"))
          (pkgconfPkgs."icu-uc" or (errorHandler.pkgConfDepError "icu-uc"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fluent" or (errorHandler.buildDepError "fluent"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fluent-icu" or (errorHandler.buildDepError "fluent-icu"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }
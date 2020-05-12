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
      identifier = { name = "throttled"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://gitlab.com/fosskers/throttled";
      url = "";
      synopsis = "Concurrent processing of a Foldable, throttled by CPU count.";
      description = "Concurrent processing of a Foldable, throttled by CPU count. You must compile your executable with @-threaded@ to see any effect.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }
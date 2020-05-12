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
      identifier = { name = "snowflake-core"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 KaiJia";
      maintainer = "jiakai0419@gmail.com";
      author = "KaiJia";
      homepage = "https://github.com/jiakai0419/snowflake#readme";
      url = "";
      synopsis = "twitter's snowflake";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time-exts" or (errorHandler.buildDepError "time-exts"))
          ];
        buildable = true;
        };
      tests = {
        "snowflake-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snowflake-core" or (errorHandler.buildDepError "snowflake-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
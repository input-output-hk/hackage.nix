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
      specVersion = "2.4";
      identifier = { name = "dialogue"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Alias Qli";
      maintainer = "2576814881@qq.com";
      author = "Alias Qli";
      homepage = "https://github.com/AliasQli/dialogue#readme";
      url = "";
      synopsis = "I/O in Haskell Report 1.2";
      description = "Please see the README on GitHub at <https://github.com/AliasQli/dialogue#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dialogue" or (errorHandler.buildDepError "dialogue"))
          ];
          buildable = true;
        };
      };
    };
  }
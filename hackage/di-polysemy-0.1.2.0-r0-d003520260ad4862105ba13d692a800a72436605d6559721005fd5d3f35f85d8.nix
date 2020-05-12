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
      specVersion = "1.18";
      identifier = { name = "di-polysemy"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2020 Ben Simms";
      maintainer = "ben@bensimms.moe";
      author = "Ben Simms";
      homepage = "https://github.com/nitros12/di-polysemy";
      url = "";
      synopsis = "DI logger wrapped for Polysemy";
      description = "Please see the README on GitHub at <https://github.com/nitros12/di-polysemy>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
          (hsPkgs."di-core" or (errorHandler.buildDepError "di-core"))
          (hsPkgs."di-df1" or (errorHandler.buildDepError "di-df1"))
          (hsPkgs."di-handle" or (errorHandler.buildDepError "di-handle"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          ];
        buildable = true;
        };
      };
    }
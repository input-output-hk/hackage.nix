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
      identifier = { name = "xlsx-tabular"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kazuo Koga";
      maintainer = "obiwanko@me.com";
      author = "Kazuo Koga";
      homepage = "http://github.com/kkazuo/xlsx-tabular#readme";
      url = "";
      synopsis = "Xlsx table decode utility";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
        ];
        buildable = true;
      };
      tests = {
        "xlsx-tabular-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xlsx-tabular" or (errorHandler.buildDepError "xlsx-tabular"))
          ];
          buildable = true;
        };
      };
    };
  }
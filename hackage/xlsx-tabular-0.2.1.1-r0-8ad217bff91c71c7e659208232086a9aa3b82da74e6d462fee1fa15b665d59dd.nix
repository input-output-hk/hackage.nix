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
      identifier = { name = "xlsx-tabular"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Koga Kazuo";
      maintainer = "Koga Kazuo <obiwanko@me.com>";
      author = "Koga Kazuo <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/xlsx-tabular";
      url = "";
      synopsis = "Xlsx table cell value extraction utility";
      description = "\nConvenience utility to read xlsx tabular cells.\n\nYou can extract the values from xlsx files\ntable rows to JSON format by the heuristics or\nyour custom function.";
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
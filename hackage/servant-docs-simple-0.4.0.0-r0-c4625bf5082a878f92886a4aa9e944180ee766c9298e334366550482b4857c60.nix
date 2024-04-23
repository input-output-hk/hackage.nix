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
      identifier = { name = "servant-docs-simple"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2020 Holmusk";
      maintainer = "Holmusk <tech@holmusk.com>";
      author = "kwannoel";
      homepage = "https://github.com/Holmusk/servant-docs-simple";
      url = "";
      synopsis = "Generate endpoints overview for Servant API";
      description = "This library uses [Data.Typeable](https://hackage.haskell.org/package/base/docs/Data-Typeable.html)\nto generate documentation for [Servant](https://hackage.haskell.org/package/servant) API types.\nIt relies on the `typeRep` of Servant's combinators and other datatypes used in\nthe API to generate the documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "servant-docs-simple-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-docs-simple" or (errorHandler.buildDepError "servant-docs-simple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          ];
          buildable = true;
        };
      };
    };
  }
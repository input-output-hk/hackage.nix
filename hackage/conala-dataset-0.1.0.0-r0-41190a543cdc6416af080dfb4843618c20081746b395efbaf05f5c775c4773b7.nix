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
      specVersion = "1.12";
      identifier = { name = "conala-dataset"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Marco Zocca, UnfoldML";
      maintainer = "Marco Zocca";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/conala-hs#readme";
      url = "";
      synopsis = "bindings to the CoNaLa dataset";
      description = "bindings to the CoNaLa dataset (Code-Natural Language Challenge)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-aeson" or (errorHandler.buildDepError "conduit-aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "conala-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conala" or (errorHandler.buildDepError "conala"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
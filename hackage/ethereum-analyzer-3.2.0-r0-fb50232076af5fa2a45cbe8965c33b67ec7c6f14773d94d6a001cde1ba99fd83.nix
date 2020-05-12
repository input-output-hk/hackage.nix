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
      identifier = { name = "ethereum-analyzer"; version = "3.2.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/zchn/ethereum-analyzer";
      url = "";
      synopsis = "A Ethereum contract analyzer.";
      description = "A Ethereum contract analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ethereum-analyzer-deps" or (errorHandler.buildDepError "ethereum-analyzer-deps"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
          (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ethereum-analyzer" or (errorHandler.buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or (errorHandler.buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            ];
          buildable = true;
          };
        };
      };
    }
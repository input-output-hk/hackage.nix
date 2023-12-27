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
      identifier = { name = "tinytools"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2023 minimaple (Peter Lu)";
      maintainer = "minimapletinytools@gmail.com";
      author = "minimaple";
      homepage = "https://github.com/minimapletinytools/tinytools#readme";
      url = "";
      synopsis = "tinytools is a monospace unicode diagram editor";
      description = "tinytools is a mono-space unicode diagram editor library, tinytools is only the model and controller. See tinytools-vty for a terminal based view frontend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-potatoes" or (errorHandler.buildDepError "reflex-potatoes"))
          (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      tests = {
        "tinytools-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-test-host" or (errorHandler.buildDepError "reflex-test-host"))
            (hsPkgs."tinytools" or (errorHandler.buildDepError "tinytools"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
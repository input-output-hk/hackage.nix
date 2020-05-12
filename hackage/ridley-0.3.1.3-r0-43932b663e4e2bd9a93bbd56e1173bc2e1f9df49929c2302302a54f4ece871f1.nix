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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ridley"; version = "0.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 IRIS Connect Ltd.";
      maintainer = "chrisd@irisconnect.co.uk";
      author = "Alfredo Di Napoli & the IRIS Connect Engineering Team";
      homepage = "https://github.com/iconnect/ridley#README";
      url = "";
      synopsis = "Quick metrics to grow your app strong.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."wai-middleware-metrics" or (errorHandler.buildDepError "wai-middleware-metrics"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."prometheus" or (errorHandler.buildDepError "prometheus"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."ekg-prometheus-adapter" or (errorHandler.buildDepError "ekg-prometheus-adapter"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      tests = {
        "ridley-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ridley" or (errorHandler.buildDepError "ridley"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."ekg-core" or (errorHandler.buildDepError "ekg-core"))
            (hsPkgs."prometheus" or (errorHandler.buildDepError "prometheus"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."ekg-prometheus-adapter" or (errorHandler.buildDepError "ekg-prometheus-adapter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            ];
          buildable = true;
          };
        };
      };
    }
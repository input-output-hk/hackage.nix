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
      identifier = { name = "ridley-extras"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alfredo Di Napoli & IRIS Connect Engineering Team";
      maintainer = "chrisd@irisconnect.co.uk";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/iconnect/ridley/ridley-extras#readme";
      url = "";
      synopsis = "Handy metrics that don't belong to ridley.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prometheus" or (errorHandler.buildDepError "prometheus"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."ekg-prometheus-adapter" or (errorHandler.buildDepError "ekg-prometheus-adapter"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ridley" or (errorHandler.buildDepError "ridley"))
          ];
        buildable = true;
        };
      tests = {
        "ridley-extras-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ridley-extras" or (errorHandler.buildDepError "ridley-extras"))
            ];
          buildable = true;
          };
        };
      };
    }
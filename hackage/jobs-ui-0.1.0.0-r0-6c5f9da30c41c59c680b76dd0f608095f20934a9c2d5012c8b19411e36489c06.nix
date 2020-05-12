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
      identifier = { name = "jobs-ui"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Gil Mizrahi";
      maintainer = "gilmi@posteo.net";
      author = "Gil Mizrahi";
      homepage = "";
      url = "";
      synopsis = "A library for creating a jobs management website running custom jobs.";
      description = "A library for creating a jobs management website running custom jobs by defining jobs in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."Spock-digestive" or (errorHandler.buildDepError "Spock-digestive"))
          (hsPkgs."Spock-lucid" or (errorHandler.buildDepError "Spock-lucid"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-lucid" or (errorHandler.buildDepError "digestive-functors-lucid"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-relative-time" or (errorHandler.buildDepError "pretty-relative-time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }
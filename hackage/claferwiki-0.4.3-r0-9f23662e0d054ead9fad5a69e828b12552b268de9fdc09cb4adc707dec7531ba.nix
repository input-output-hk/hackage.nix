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
      identifier = { name = "claferwiki"; version = "0.4.3"; };
      license = "MIT";
      copyright = "Michal Antkiewicz, Chris Walker, Luke Michael Brown";
      maintainer = "Michał Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Michał Antkiewicz, Chris Walker, Luke Michael Brown";
      homepage = "http://github.com/gsdlab/claferwiki";
      url = "";
      synopsis = "A wiki-based IDE for literate modeling with Clafer";
      description = "A wiki-based IDE for literate modeling with Clafer. A Plugin for the Gitit wiki which collects code blocks written in Clafer (.clafer), compiles them, renders into HTML and Dot, and replaces the code blocks with the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."gitit" or (errorHandler.buildDepError "gitit"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."clafer" or (errorHandler.buildDepError "clafer"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }
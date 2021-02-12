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
      identifier = { name = "clafer"; version = "0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michal Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
      author = "Kacper Bak, Jimmy Liang, Michal Antkiewicz, Ed Zulkoski, Luke Michael Brown, Paulius Juodisius, Rafael Olaechea";
      homepage = "http://clafer.org";
      url = "";
      synopsis = "Compiles Clafer models to other formats: Alloy, JavaScript, JSON, HTML, Dot.";
      description = "Clafer is a general purpose, lightweight, structural modeling language developed at GSD Lab, University of Waterloo, and MODELS group at IT University of Copenhagen. Lightweight modeling aims at improving the understanding of the problem domain in the early stages of software development and determining the requirements with fewer defects. Clafer's goal is to make modeling more accessible to a wider range of users and domains. The tool provides a reference language implementation. It translates models to other formats (e.g. Alloy, JavaScript, JSON) to allow for reasoning with existing tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."data-stringmap" or (errorHandler.buildDepError "data-stringmap"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."json-builder" or (errorHandler.buildDepError "json-builder"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
        buildable = true;
        };
      exes = {
        "clafer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."clafer" or (errorHandler.buildDepError "clafer"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."data-stringmap" or (errorHandler.buildDepError "data-stringmap"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
            (hsPkgs."clafer" or (errorHandler.buildDepError "clafer"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
            ];
          buildable = true;
          };
        };
      };
    }
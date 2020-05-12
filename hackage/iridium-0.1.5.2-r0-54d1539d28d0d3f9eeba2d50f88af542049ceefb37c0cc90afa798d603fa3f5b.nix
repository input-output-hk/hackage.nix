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
      identifier = { name = "iridium"; version = "0.1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Lennart Spitzner";
      maintainer = "lsp@informatik.uni-kiel.de";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/iridium";
      url = "";
      synopsis = "Automated Testing and Package Uploading";
      description = "This executable aims to automate several typical steps when\nuploading a new package version to hackage.\n\nSteps currently include:\n\n* Compilation and running tests using multiple compiler versions.\n\n* Checking that the changelog mentions the latest version.\n\n* Checking that the upper bounds of dependencies\nare up-to-date by making use of stackage snapshots.\n\n* Uploading of both the package itself and the documentation.\n\nThe program is configurable using a per-project .yaml file.\n\nSee the README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "iridium" = {
          depends = [
            (hsPkgs."iridium" or (errorHandler.buildDepError "iridium"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
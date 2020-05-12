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
      specVersion = "1.6";
      identifier = { name = "Hermes"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, University of Tromsø";
      maintainer = "Svein Ove Aas <svein.ove@aas.no>";
      author = "Svein Ove Aas <svein.ove@aas.no>";
      homepage = "";
      url = "";
      synopsis = "Message-based middleware layer";
      description = "A middleware providing best-effort unicast, remote procedure calls,\nprobabilistic (and slow!) broadcast and automatic membership\nmanagement, meant for small to medium networks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."AES" or (errorHandler.buildDepError "AES"))
          (hsPkgs."SHA2" or (errorHandler.buildDepError "SHA2"))
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."yjtools" or (errorHandler.buildDepError "yjtools"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."unamb" or (errorHandler.buildDepError "unamb"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      };
    }
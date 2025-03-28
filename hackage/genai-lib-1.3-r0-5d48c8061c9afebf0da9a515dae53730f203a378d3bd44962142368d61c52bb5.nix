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
      specVersion = "2.2";
      identifier = { name = "genai-lib"; version = "1.3"; };
      license = "ISC";
      copyright = "2024 Dino Morelli";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "";
      url = "";
      synopsis = "Library and command line tool for interacting with various generative\nAI LLMs";
      description = "Library and command line tool for performing completions and chats\nwith various generative AI LLMs (Large Language Models).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
        ];
        buildable = true;
      };
      exes = {
        "genai" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."genai-lib" or (errorHandler.buildDepError "genai-lib"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ];
          buildable = true;
        };
      };
    };
  }
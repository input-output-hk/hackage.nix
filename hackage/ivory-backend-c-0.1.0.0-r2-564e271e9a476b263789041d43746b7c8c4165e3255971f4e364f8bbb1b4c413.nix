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
      identifier = { name = "ivory-backend-c"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory C backend.";
      description = "Ivory compiler, to a subset of C99.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
          (hsPkgs."ivory-opts" or (errorHandler.buildDepError "ivory-opts"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."cmdlib" or (errorHandler.buildDepError "cmdlib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }
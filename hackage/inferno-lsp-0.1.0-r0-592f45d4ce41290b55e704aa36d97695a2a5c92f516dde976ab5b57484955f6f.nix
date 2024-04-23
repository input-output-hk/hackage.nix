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
      identifier = { name = "inferno-lsp"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Plow-Technologies LLC";
      maintainer = "info@plowtech.net";
      author = "Sam Balco";
      homepage = "https://github.com/plow-technologies/inferno.git#readme";
      url = "";
      synopsis = "LSP for Inferno";
      description = "A language server protocol implementation for the Inferno language";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."inferno-core" or (errorHandler.buildDepError "inferno-core"))
          (hsPkgs."inferno-types" or (errorHandler.buildDepError "inferno-types"))
          (hsPkgs."inferno-vc" or (errorHandler.buildDepError "inferno-vc"))
          (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
          (hsPkgs."lsp-types" or (errorHandler.buildDepError "lsp-types"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."plow-log" or (errorHandler.buildDepError "plow-log"))
          (hsPkgs."plow-log-async" or (errorHandler.buildDepError "plow-log-async"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."special-keys" or (errorHandler.buildDepError "special-keys"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-rope" or (errorHandler.buildDepError "text-rope"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
      exes = {
        "inferno-lsp-server" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }
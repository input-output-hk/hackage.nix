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
    flags = { buildfast = true; production = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "blockfrost-pretty"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 blockfrost.io";
      maintainer = "srk@48.io";
      author = "blockfrost.io";
      homepage = "https://github.com/blockfrost/blockfrost-haskell";
      url = "";
      synopsis = "blockfrost.io pretty-printing utilities";
      description = "prettyprinter Docs and standalone prettyPrinters";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blockfrost-api" or (errorHandler.buildDepError "blockfrost-api"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."safe-money" or (errorHandler.buildDepError "safe-money"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }
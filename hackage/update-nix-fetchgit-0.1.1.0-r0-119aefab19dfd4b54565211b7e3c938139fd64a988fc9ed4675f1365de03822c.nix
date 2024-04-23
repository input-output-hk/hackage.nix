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
      identifier = { name = "update-nix-fetchgit"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Joe Hermaszewski";
      maintainer = "haskell@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/update-nix-fetchgit#readme";
      url = "";
      synopsis = "A program to update fetchgit values in Nix expressions";
      description = "This command-line utility is meant to be used by people maintaining Nix expressions that fetch files from Git repositories.\nIt automates the process of keeping such expressions up-to-date with the latest upstream sources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      exes = {
        "update-nix-fetchgit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."update-nix-fetchgit" or (errorHandler.buildDepError "update-nix-fetchgit"))
          ];
          buildable = true;
        };
      };
    };
  }
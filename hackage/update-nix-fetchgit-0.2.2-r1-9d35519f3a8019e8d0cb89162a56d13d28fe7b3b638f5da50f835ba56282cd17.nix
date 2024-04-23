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
      specVersion = "1.12";
      identifier = { name = "update-nix-fetchgit"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Joe Hermaszewski";
      maintainer = "Joe Hermaszewski <haskell@monoid.al>";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/update-nix-fetchgit#readme";
      url = "";
      synopsis = "A program to update fetchgit values in Nix expressions";
      description = "This command-line utility is meant to be used by people maintaining Nix\nexpressions that fetch files from Git repositories. It automates the process\nof keeping such expressions up-to-date with the latest upstream sources.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."github-rest" or (errorHandler.buildDepError "github-rest"))
          (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
          (hsPkgs."monad-validate" or (errorHandler.buildDepError "monad-validate"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "update-nix-fetchgit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."say" or (errorHandler.buildDepError "say"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."update-nix-fetchgit" or (errorHandler.buildDepError "update-nix-fetchgit"))
          ];
          buildable = true;
        };
      };
      tests = {
        "update-nix-fetchgit-samples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."update-nix-fetchgit" or (errorHandler.buildDepError "update-nix-fetchgit"))
          ];
          buildable = true;
        };
      };
    };
  }
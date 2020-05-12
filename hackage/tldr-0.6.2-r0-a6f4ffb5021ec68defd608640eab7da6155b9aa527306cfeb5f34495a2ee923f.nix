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
      identifier = { name = "tldr"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/tldr-hs#readme";
      url = "";
      synopsis = "Haskell tldr client";
      description = "Haskell tldr client with support for viewing tldr pages. Has offline\ncache for accessing pages. Visit https://tldr.sh for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "tldr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tldr" or (errorHandler.buildDepError "tldr"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tldr-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tldr" or (errorHandler.buildDepError "tldr"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "3.0";
      identifier = { name = "nix-lang-qq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) berberman 2022-2026";
      maintainer = "berberman <berberman@yandex.com>";
      author = "berberman";
      homepage = "";
      url = "";
      synopsis = "Quasiquoter for generated Nix expressions with antiquotation";
      description = "nix-lang-qq provides a Template Haskell quasiquoter on top of nix-lang.\nIt parses Nix snippets with antiquotation support and lowers them into the\nfresh Syn AST used by RFCPrint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."nix-lang" or (errorHandler.buildDepError "nix-lang"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "nix-lang-qq-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nix-lang" or (errorHandler.buildDepError "nix-lang"))
            (hsPkgs."nix-lang-qq" or (errorHandler.buildDepError "nix-lang-qq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
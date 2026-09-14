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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "tadka"; version = "2.0.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2026 Bombay-Boyz";
      maintainer = "259497327+Bombay-Boyz@users.noreply.github.com";
      author = "Sabrinathan Nair";
      homepage = "https://github.com/Bombay-Boyz/tadka";
      url = "";
      synopsis = "Structured error diagnostics & source-span reporting \nlike Rust's miette";
      description = "Tadka is a Haskell library for structured error diagnostics and source-span\nreporting. It turns ordinary error values into diagnostic reports with\nsource locations, labeled spans, error codes, severity, help text,\ndocumentation URLs, related diagnostics, and underlying causes. It provides\ngraphical terminal, accessible prose, and JSON renderers, with support for\ndiagnostics spanning multiple source files. Tadka also provides integrations\nfor GHC SrcSpan, Megaparsec, and Attoparsec, plus Template Haskell derivation\nsupport for reducing diagnostic boilerplate. It is inspired by Rust's miette\nbut is designed around Haskell's types and conventions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      sublibs = {
        "interop-ghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
          buildable = true;
        };
        "interop-megaparsec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
          buildable = true;
        };
        "interop-attoparsec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
          buildable = true;
        };
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
        "props" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
        "interop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tadka" or (errorHandler.buildDepError "tadka"))
            (hsPkgs."tadka".components.sublibs.interop-ghc or (errorHandler.buildDepError "tadka:interop-ghc"))
            (hsPkgs."tadka".components.sublibs.interop-megaparsec or (errorHandler.buildDepError "tadka:interop-megaparsec"))
            (hsPkgs."tadka".components.sublibs.interop-attoparsec or (errorHandler.buildDepError "tadka:interop-attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
          buildable = true;
        };
      };
    };
  }
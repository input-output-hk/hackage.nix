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
      identifier = { name = "publish"; version = "2.5.3"; };
      license = "MIT";
      copyright = "© 2016-2023 Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Andrew Cowie <istathar@gmail.com>";
      homepage = "https://github.com/aesiniath/publish#readme";
      url = "";
      synopsis = "Publishing tools for papers, books, and presentations";
      description = "Tools for rendering markdown-centric documents into PDFs. There are two\nprograms:\n\n[/render/]for generating PDFs from Markdown and LaTeX input; and\n\n[/format/]for word-wrapping and nicely formatting Markdown files.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/aesiniath/publish/blob/main/README.md README>\non GitHub.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "format" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronologique" or (errorHandler.buildDepError "chronologique"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-telemetry" or (errorHandler.buildDepError "core-telemetry"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "render" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronologique" or (errorHandler.buildDepError "chronologique"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-telemetry" or (errorHandler.buildDepError "core-telemetry"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chronologique" or (errorHandler.buildDepError "chronologique"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-telemetry" or (errorHandler.buildDepError "core-telemetry"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }
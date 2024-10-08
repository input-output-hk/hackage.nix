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
    flags = { json = false; megaparsec-compat = false; parsec-compat = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "diagnose"; version = "1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "2021- Ghilain Bergeron";
      maintainer = "Ghilain Bergeron";
      author = "Ghilain Bergeron";
      homepage = "https://github.com/mesabloo/diagnose#readme";
      url = "";
      synopsis = "Beautiful error reporting done easily";
      description = "This package provides a simple way of getting beautiful compiler/interpreter errors\nusing a very simple interface for the programmer.\n\nA quick tutorial is available in the module \"Error.Diagnose\", which goes on most of the basis\nof how to use it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optional (flags.json) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optionals (flags.megaparsec-compat) [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
        ]) ++ pkgs.lib.optional (flags.parsec-compat) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"));
        buildable = true;
      };
      tests = {
        "diagnose-megaparsec-tests" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."diagnose" or (errorHandler.buildDepError "diagnose"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ pkgs.lib.optional (flags.json) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optionals (flags.megaparsec-compat) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ]) ++ pkgs.lib.optional (flags.parsec-compat) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"));
          buildable = if !flags.megaparsec-compat then false else true;
        };
        "diagnose-parsec-tests" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."diagnose" or (errorHandler.buildDepError "diagnose"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ pkgs.lib.optional (flags.json) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optionals (flags.megaparsec-compat) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ]) ++ pkgs.lib.optional (flags.parsec-compat) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"));
          buildable = if !flags.parsec-compat then false else true;
        };
        "diagnose-rendering-tests" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."diagnose" or (errorHandler.buildDepError "diagnose"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ pkgs.lib.optional (flags.json) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optionals (flags.megaparsec-compat) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ]) ++ pkgs.lib.optional (flags.parsec-compat) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"));
          buildable = true;
        };
      };
    };
  }
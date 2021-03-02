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
    flags = { ghcid = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "neuron"; version = "1.0.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2020 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://neuron.zettel.page";
      url = "";
      synopsis = "Future-proof system for plain-text notes.";
      description = "neuron is a future-proof system for managing your plain-text Zettelkasten notes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
          (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
          (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."aeson-gadt-th" or (errorHandler.buildDepError "aeson-gadt-th"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
          (hsPkgs."dependent-sum-aeson-orphans" or (errorHandler.buildDepError "dependent-sum-aeson-orphans"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
          (hsPkgs."reflex-dom-pandoc" or (errorHandler.buildDepError "reflex-dom-pandoc"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      sublibs = {
        "neuron-app-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."aeson-gadt-th" or (errorHandler.buildDepError "aeson-gadt-th"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
            (hsPkgs."dependent-sum-aeson-orphans" or (errorHandler.buildDepError "dependent-sum-aeson-orphans"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
            (hsPkgs."reflex-dom-pandoc" or (errorHandler.buildDepError "reflex-dom-pandoc"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."rib-core" or (errorHandler.buildDepError "rib-core"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
            ] ++ (pkgs.lib).optional (!flags.ghcid) (hsPkgs."neuron" or (errorHandler.buildDepError "neuron"));
          buildable = true;
          };
        };
      exes = {
        "neuron" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."aeson-gadt-th" or (errorHandler.buildDepError "aeson-gadt-th"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
            (hsPkgs."dependent-sum-aeson-orphans" or (errorHandler.buildDepError "dependent-sum-aeson-orphans"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
            (hsPkgs."reflex-dom-pandoc" or (errorHandler.buildDepError "reflex-dom-pandoc"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."rib-core" or (errorHandler.buildDepError "rib-core"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
            ] ++ (pkgs.lib).optionals (!flags.ghcid) [
            (hsPkgs."neuron" or (errorHandler.buildDepError "neuron"))
            (hsPkgs."neuron".components.sublibs.neuron-app-lib or (errorHandler.buildDepError "neuron:neuron-app-lib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "neuron-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."aeson-gadt-th" or (errorHandler.buildDepError "aeson-gadt-th"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (errorHandler.buildDepError "dependent-sum-template"))
            (hsPkgs."dependent-sum-aeson-orphans" or (errorHandler.buildDepError "dependent-sum-aeson-orphans"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
            (hsPkgs."reflex-dom-pandoc" or (errorHandler.buildDepError "reflex-dom-pandoc"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
            (hsPkgs."rib-core" or (errorHandler.buildDepError "rib-core"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optionals (!flags.ghcid) [
            (hsPkgs."neuron" or (errorHandler.buildDepError "neuron"))
            (hsPkgs."neuron".components.sublibs.neuron-app-lib or (errorHandler.buildDepError "neuron:neuron-app-lib"))
            ];
          buildable = true;
          };
        };
      };
    }
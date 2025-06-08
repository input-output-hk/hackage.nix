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
    flags = { ci = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "swarm"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Brent Yorgey 2021";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "2D resource gathering game with programmable robots";
      description = "Swarm is a 2D programming and resource gathering\ngame. Program your robots to explore the world and\ncollect resources, which in turn allows you to\nbuild upgraded robots that can run more\ninteresting and complex programs. See the\n<https://github.com/swarm-game/swarm/blob/main/README.md README>\nfor more information and instructions on how to\nplay or contribute!\n\n== Module organization\nFor developers getting oriented, Swarm's modules are organized into\nsublibraries.  Roughly in order from inner to outer, they are:\n\n* swarm-util: miscellaneous utilities\n* swarm-lang: parsing, typechecking, etc. for the Swarm language\n* swarm-topography: working with location in 2D (sub-)worlds\n* swarm-scenario: scenario descriptions, parsing, & processing\n* swarm-engine: game simulation\n* swarm-doc: generating documentation\n* swarm-tui: textual user interface\n* swarm-web: web interface\n* swarm: the swarm executable\n\n<<docs/image/sublibrary-graph.svg>>\n\nSee the [Swarm module guide](https://github.com/swarm-game/swarm/wiki/Module-guide)\nfor a more in-depth guide to the codebase.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "swarm-lang" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monoidmap" or (errorHandler.buildDepError "monoidmap"))
            (hsPkgs."monoidmap-aeson" or (errorHandler.buildDepError "monoidmap-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-rope" or (errorHandler.buildDepError "text-rope"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-topography" = {
          depends = [
            (hsPkgs."AhoCorasick" or (errorHandler.buildDepError "AhoCorasick"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-scenario" = {
          depends = [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolexpr" or (errorHandler.buildDepError "boolexpr"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."hsnoise" or (errorHandler.buildDepError "hsnoise"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monoidmap" or (errorHandler.buildDepError "monoidmap"))
            (hsPkgs."monoidmap-aeson" or (errorHandler.buildDepError "monoidmap-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."murmur3" or (errorHandler.buildDepError "murmur3"))
            (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-engine" = {
          depends = [
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."astar" or (errorHandler.buildDepError "astar"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolexpr" or (errorHandler.buildDepError "boolexpr"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."fused-effects-lens" or (errorHandler.buildDepError "fused-effects-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monoidmap" or (errorHandler.buildDepError "monoidmap"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."ordered-containers" or (errorHandler.buildDepError "ordered-containers"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-web" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-tui or (errorHandler.buildDepError "swarm:swarm-tui"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-tournament" = {
          depends = [
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."servant-JuicyPixels" or (errorHandler.buildDepError "servant-JuicyPixels"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-util" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolexpr" or (errorHandler.buildDepError "boolexpr"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."minimorph" or (errorHandler.buildDepError "minimorph"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
        "swarm-doc" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-tui" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-list-skip" or (errorHandler.buildDepError "brick-list-skip"))
            (hsPkgs."brick-tabular-list" or (errorHandler.buildDepError "brick-tabular-list"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."fuzzy" or (errorHandler.buildDepError "fuzzy"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."murmur3" or (errorHandler.buildDepError "murmur3"))
            (hsPkgs."natural-sort" or (errorHandler.buildDepError "natural-sort"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
      };
      exes = {
        "swarm" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-crossplatform" or (errorHandler.buildDepError "vty-crossplatform"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-tui or (errorHandler.buildDepError "swarm:swarm-tui"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
            (hsPkgs."swarm".components.sublibs.swarm-web or (errorHandler.buildDepError "swarm:swarm-web"))
          ];
          buildable = true;
        };
        "swarm-scene" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
          ];
          buildable = true;
        };
        "swarm-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."swarm".components.sublibs.swarm-doc or (errorHandler.buildDepError "swarm:swarm-doc"))
          ];
          buildable = true;
        };
        "swarm-host-tournament" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-tournament or (errorHandler.buildDepError "swarm:swarm-tournament"))
          ];
          buildable = true;
        };
      };
      tests = {
        "swarm-unit" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boolexpr" or (errorHandler.buildDepError "boolexpr"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-doc or (errorHandler.buildDepError "swarm:swarm-doc"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-tui or (errorHandler.buildDepError "swarm:swarm-tui"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "swarm-integration" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-doc or (errorHandler.buildDepError "swarm:swarm-doc"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-tui or (errorHandler.buildDepError "swarm:swarm-tui"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
        "tournament-host" = {
          depends = [
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-tournament or (errorHandler.buildDepError "swarm:swarm-tournament"))
          ];
          buildable = true;
        };
        "standalone-topography" = {
          depends = [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."swarm".components.sublibs.swarm-engine or (errorHandler.buildDepError "swarm:swarm-engine"))
            (hsPkgs."swarm".components.sublibs.swarm-lang or (errorHandler.buildDepError "swarm:swarm-lang"))
            (hsPkgs."swarm".components.sublibs.swarm-scenario or (errorHandler.buildDepError "swarm:swarm-scenario"))
            (hsPkgs."swarm".components.sublibs.swarm-topography or (errorHandler.buildDepError "swarm:swarm-topography"))
            (hsPkgs."swarm".components.sublibs.swarm-util or (errorHandler.buildDepError "swarm:swarm-util"))
          ];
          buildable = true;
        };
      };
    };
  }
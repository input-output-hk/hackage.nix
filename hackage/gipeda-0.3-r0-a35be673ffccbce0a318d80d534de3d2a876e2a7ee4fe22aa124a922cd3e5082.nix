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
    flags = { old-gitlib = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gipeda"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/gipeda";
      url = "";
      synopsis = "Git Performance Dashboard";
      description = "Gipeda is a a tool that presents data from your program’s benchmark suite\n(or any other source), with nice tables and shiny graphs.\n\nSo it is up to you whether you have a polling shell script loop, a post-commit\nhook or an elaborate jenkins setup. As long as the performance data ends up in\nthe `logs/` directory, gipeda is happy.\n\nGipeda produces static pages. In fact, the (single) html file and the\naccompanying JavaScript code is completely static. Giepda just generates a\nlarge number of json files. This has the advantage of easy deployment: Just put\ngipeda in your webspace or copy the files to some static web hosting and you\nare done. This puts very little load on your server, is cache-friendly and has\nno security problems.\n\nDo you want to see it live? Check out these:\n\n* Demo page, visualizing fairly boring stuff about gipedia itself:\n<http://nomeata.github.io/gipeda/>\n\n* GHC’s gipeda installation:\n<https://perf.haskell.org/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gipeda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."gitlib" or (errorHandler.buildDepError "gitlib"))
            (hsPkgs."gitlib-libgit2" or (errorHandler.buildDepError "gitlib-libgit2"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."concurrent-output" or (errorHandler.buildDepError "concurrent-output"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if flags.old-gitlib
            then [
              (hsPkgs."gitlib" or (errorHandler.buildDepError "gitlib"))
              (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
              ]
            else [
              (hsPkgs."gitlib" or (errorHandler.buildDepError "gitlib"))
              ]);
          buildable = true;
          };
        };
      };
    }
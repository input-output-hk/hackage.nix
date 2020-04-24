{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gipeda"; version = "0.3.2.2"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."gitlib" or ((hsPkgs.pkgs-errors).buildDepError "gitlib"))
            (hsPkgs."gitlib-libgit2" or ((hsPkgs.pkgs-errors).buildDepError "gitlib-libgit2"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."concurrent-output" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-output"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
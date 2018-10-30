{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-gitlib = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gipeda";
        version = "0.3";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.shake)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.split)
            (hsPkgs.vector)
            (hsPkgs.cassava)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.gitlib)
            (hsPkgs.gitlib-libgit2)
            (hsPkgs.tagged)
            (hsPkgs.extra)
            (hsPkgs.file-embed)
            (hsPkgs.concurrent-output)
            (hsPkgs.transformers)
          ] ++ (if flags.old-gitlib
            then [
              (hsPkgs.gitlib)
              (hsPkgs.conduit-combinators)
            ]
            else [ (hsPkgs.gitlib) ]);
        };
      };
    };
  }
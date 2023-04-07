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
      identifier = { name = "daino"; version = "0.1.5.2"; };
      license = "LicenseRef-GPL";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <frank@geoinfo.tuwien.ac.at>";
      author = "Andrew Frank";
      homepage = "https://github.com/andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "daino is a static site generator (SSG) using shake and pandoc";
      description = "A static site generator using Pandoc and other available packages on Hackage (e.g. shake, twitch, scotty), influenced by Chris Penner's [slick](https://github.com/ChrisPenner/slick#readme). It uses text files (in Markdown codes) to manage data and relies on   version management with git. Page appearances are directed with YAML headers. For each page a PDF file is produced to allow regular print output. Index pages for navigation between pages are automatically created.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ReplaceUmlaut" or (errorHandler.buildDepError "ReplaceUmlaut"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-sidenote" or (errorHandler.buildDepError "pandoc-sidenote"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."uniform-cmdLineArgs" or (errorHandler.buildDepError "uniform-cmdLineArgs"))
          (hsPkgs."uniform-http" or (errorHandler.buildDepError "uniform-http"))
          (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
          (hsPkgs."uniform-latex2pdf" or (errorHandler.buildDepError "uniform-latex2pdf"))
          (hsPkgs."uniform-pandoc" or (errorHandler.buildDepError "uniform-pandoc"))
          (hsPkgs."uniform-shake" or (errorHandler.buildDepError "uniform-shake"))
          (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
          (hsPkgs."uniform-watch" or (errorHandler.buildDepError "uniform-watch"))
          (hsPkgs."uniform-webserver" or (errorHandler.buildDepError "uniform-webserver"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "daino" = {
          depends = [
            (hsPkgs."ReplaceUmlaut" or (errorHandler.buildDepError "ReplaceUmlaut"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."daino" or (errorHandler.buildDepError "daino"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-sidenote" or (errorHandler.buildDepError "pandoc-sidenote"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."uniform-cmdLineArgs" or (errorHandler.buildDepError "uniform-cmdLineArgs"))
            (hsPkgs."uniform-http" or (errorHandler.buildDepError "uniform-http"))
            (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
            (hsPkgs."uniform-latex2pdf" or (errorHandler.buildDepError "uniform-latex2pdf"))
            (hsPkgs."uniform-pandoc" or (errorHandler.buildDepError "uniform-pandoc"))
            (hsPkgs."uniform-shake" or (errorHandler.buildDepError "uniform-shake"))
            (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
            (hsPkgs."uniform-watch" or (errorHandler.buildDepError "uniform-watch"))
            (hsPkgs."uniform-webserver" or (errorHandler.buildDepError "uniform-webserver"))
            (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }
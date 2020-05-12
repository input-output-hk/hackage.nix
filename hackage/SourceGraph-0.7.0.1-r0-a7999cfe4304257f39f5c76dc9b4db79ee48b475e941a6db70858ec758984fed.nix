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
      specVersion = "1.6";
      identifier = { name = "SourceGraph"; version = "0.7.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Static code analysis using graph-theoretic techniques.";
      description = "Statically analyse Haskell source code using graph-theoretic\ntechniques.  Sample reports can be found at:\n<http://code.haskell.org/~ivanm/Sample_SourceGraph/SampleReports.html>\n\nTo use SourceGraph, call it as either:\n\n> SourceGraph path/to/Foo.cabal\n\nOr, if your project doesn't use Cabal, then there is limited support\nfor using an overall module from your program\\/library:\n\n> SourceGraph path/to/Foo.hs\n\nNote that the Cabal method is preferred, as it is better able to\ndetermine the project name and exported modules (when passing a\nHaskell file to SourceGraph, it uses that module's name as the overall\nname of project and assumes that it is the only exported module; as\nsuch, it works better for programs than libraries).\n\nWhichever way you run SourceGraph, it then creates a @SourceGraph@\nsubdirectory in the same directory as the file that was passed to it,\nand within that subdirectory creates the analysis report in\n@Foo.html@.\n\nSourceGraph is still experimental in terms of its ability to parse and\nproperly understand Haskell source code and in the types of analyses\nit performs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "SourceGraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."Graphalyze" or (errorHandler.buildDepError "Graphalyze"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-basic";
        version = "0.14.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Common drawing utilities built on wumpus-core.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha, it was released\nto Hackage prematurely and while its capabilities have improved\nwith subsequent updates it is arguably becoming even less stable\nand more experimental (unfortunately the only thing consistent\nabout the API is that it consistently changes...).\n\nVersion 0.14.0 breaks up Wumpus-Basic into two /layers/ -\n@Wumpus.Basic@ for core data types, general utilities and\n/System/ utilities (currently only font loading); the other\nlayer, @Wumpus.Drawing@, is for for specific drawing\n\\\"objects\\\" - arrowheads, dots, and the like. The APIs of the\n@Drawing@ modules have not been given much attention as the\nunderlying graphic types have changed, they are due for\nsubstantial revision. This includes modules that were previously\nconsidered fairly stable such as the @Basic.SafeFonts@ module\nwhich no longer seems very /SVG safe/.\n\nNOTE - many of the demos now use font metrics. Font metrics for\nthe \\\"Core 14\\\" PostScript fonts are distributed as @*.afm@\nfiles with GhostScript in the @fonts@ directory. Wumpus expects\nthe GhostScript font metrics to be AFM version 2.0 files (this\nmatches GhostScript 8.63). Alternatively, metrics for the Core\n14 fonts are available from Adode (AFM version 4.1), see the\nlinks below. To run the demos properly you will need one of\nthese sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\nAlso note that Wumpus uses fallback metrics (derived from the\nmonospaced Courier font) when font loading fails, rather than\nthrowing a terminal error. Applications should ideally check\nthe font loading log to ensure that fonts have loaded correctly\n(the demos print this log to standard out).\n\nChangelog:\n\nv0.13.0 to v0.14.0:\n\n* Re-organised module hierarchy, Wumpus-Basic is now divided\ninto two layers - Basic (Font loader, utils, kernel drawing)\nand Drawing - /constructed/ graphic objects like arrows, dots,\netc.\n\n* Re-designed the /ContextFunction/ function types. Context\nfunctions with different numbers of /static arguments/ are\nnow separate newtypes. This has allowed a major cull of the\ncombinators operating on context functions (@prepro@,\n@postpro@, @situ@, etc.) and now only a handful of special\ncombinators are needed. As the newtypes are instances of\nMonad and Applicative the usual Applicative and Monad\ncombinators are now more readily useful.\n\n* Work on the font loader code to improve its robustness, and\nimproved error signalling on load failure. Loading glyph\nmetrics now returns both the metrics (possibly fallback\nmetrics if parsing failed) and a log.\n\nv0.12.0 to v0.13.0:\n\n* Major changes to @Basic.Graphic@ modules. @DrawingR@ is\nrenamed @Drawing@ and is substantially re-worked. Graphic\n/functional/ types are now encapulated in the Drawing\nconstructor @Drawing (ctx -> pt -> prim)@ rather than\npartially outside it @pt -> Drawing (ctx -> prim)@.\n@Drawing@ monad renamed @TraceDrawing@ and @DrawingT@\ntransformer renamed @TraceDrawingT@.\n\n* Rudimentary font loading added, only AFM files are supported.\n\n* @Basic.Shapes.Coordinate@ re-worked. The Coordinate type is\nnow more like the Shapes types (excepting the intentional\ndifference in drawing style).\n\n* @Basic.Shapes.Plaintext@ removed.\n\n* @Basic.Text.LRText@ completely redesigned.\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-drawing";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "High-level drawing objects built on Wumpus-Basic.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. Although many of\nthe drawing objects have been improved since the code was split\nfrom Wumpus-Basic, the code is still prototypical. Essentially\nthis package is a /technology preview/ and not a re-usable\nlibrary.\n\nNOTE - many of the demos use font metrics. Font metrics for\nthe \\\"Core 14\\\" PostScript fonts are distributed as @*.afm@\nfiles with GhostScript in the @fonts@ directory. Wumpus expects\nthe GhostScript font metrics to be AFM version 2.0 files (this\nmatches GhostScript 8.63). Alternatively, metrics for the Core\n14 fonts are available from Adode (AFM version 4.1), see the\nlinks below. To run the demos properly you will need one of\nthese sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\nAlso note that Wumpus uses fallback metrics (derived from the\nmonospaced Courier font) when font loading fails, rather than\nthrowing a terminal error. Applications should ideally check\nthe font loading log to ensure that fonts have loaded correctly\n(the demos print this log to standard out).\n\nChangelog:\n\nv0.1.0:\n\n* Initial release - this is a split from @Wumpus-Basic@ making\nthe (very prototypical - read sub-alpha, unstable...) modules\nin the @Drawing@ hierarchy a separate package.\n\n* Simplified Chains - chains are now regular lists (though often\ninfinite). Drawings are made with chains using new zip-like\nfunctions.\n\n* Re-worked Shapes.\n\n* Re-worked Arrow and Arrow Tip types.\n\n* Re-worked ConnectorPaths.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
        ];
      };
    };
  }
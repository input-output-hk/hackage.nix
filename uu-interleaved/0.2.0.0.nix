{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uu-interleaved";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "S Doaitse Swierstra";
        maintainer = "Doaitse Swierstra";
        author = "Doaitse Swierstra, Utrecht University";
        homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
        url = "";
        synopsis = "Providing an interleaving combinator for use with applicative/alternative style implementations.";
        description = "This module contains parser library independent code which can be used to describe inlerleaved execution of applicative style structures.\nIt is amongst other used in the uu-options package, which provides facilities for parsing command-line options or files containing preferences.\nIt generalises the permuting parsers and the list merging parsers as e.g. found in the uulib library. For  a more complete description see the Technical Report\ndescribing its implementation and use see http://www.cs.uu.nl/research/techreps/UU-CS-2013-005.html";
        buildType = "Simple";
      };
      components = {
        uu-interleaved = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
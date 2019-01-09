{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "easyrender"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2012-2013 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/easyrender/";
      url = "";
      synopsis = "User-friendly creation of EPS, PostScript, and PDF files";
      description = "This module provides efficient functions for rendering vector\ngraphics to a number of formats, including EPS, PostScript, and\nPDF. It provides an abstraction for multi-page documents, as well\nas a set of graphics primitives for page descriptions.\n\nThe graphics model is similar to that of the PostScript and PDF\nlanguages, but we only implement a subset of their functionality.\nCare has been taken that graphics rendering is done efficiently and\nas lazily as possible; documents are rendered \\\"on the fly\\\",\nwithout the need to store the whole document in memory.\n\nThe provided document description model consists of two separate\nlayers of abstraction:\n\n* /drawing/ is concerned with placing marks on a fixed surface, and\ntakes place in the 'Draw' monad;\n\n* /document structure/ is concerned with a sequence of pages, their\nbounding boxes, and other meta-data. It takes place in the\n'Document' monad.\n\nIn principle, the functionality provided by EasyRender is similar to\na subset of Cairo; however, EasyRender is lightweight and at least\nan order of magnitude faster.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.zlib)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.superdoc)
          ];
        };
      };
    }
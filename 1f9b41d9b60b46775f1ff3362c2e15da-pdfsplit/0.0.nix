{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pdfsplit";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel@wagner-home.com";
        author = "Daniel Wagner";
        homepage = "http://dmwit.com/pdfsplit";
        url = "";
        synopsis = "split two-column PDFs, so there is one column per page";
        description = "Reading two-column academic papers is awkward on the\nKindle; you sort of have to choose between zooming way\nout, so that the text is unreadably small, or zooming in\nfar enough that the text is readable, but mucking around\nwith the arrow navigation keys and never quite centering\nthe text on the page. This program takes two-column papers\non standard US-letter size paper and splits them down the\nmiddle, producing a PDF with one page for each column. On\nthe Kindle, this makes the text large enough to read while\nstill allowing the convenient, built-in navigation mode.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pdfsplit = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.pdfinfo
              hsPkgs.process
              hsPkgs.temporary
            ];
          };
        };
      };
    }
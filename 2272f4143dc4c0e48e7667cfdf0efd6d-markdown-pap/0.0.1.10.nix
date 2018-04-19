{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "markdown-pap";
          version = "0.0.1.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "markdown parser with papillon";
        description = "Now. Implemented only following features.\n\nParagraph, header, code, list, image\n\nNot yet implemented following features.\n\nnewline, bold, quote, link, horizontal line";
        buildType = "Simple";
      };
      components = {
        markdown-pap = {
          depends  = [
            hsPkgs.base
            hsPkgs.papillon
            hsPkgs.monads-tf
          ];
        };
      };
    }
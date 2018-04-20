{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pdf2line";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2008 Audrey Tang; distributed with parts of \"xpdf\" by Glyph & Cog, LLC.";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang <audreyt@audreyt.org>";
        homepage = "";
        url = "";
        synopsis = "Simple command-line utility to convert PDF into text";
        description = "Simple command-line utility to convert PDF into text";
        buildType = "Simple";
      };
      components = {
        exes = {
          pdf2line = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.FindBin
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
          pdfdump = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.FindBin
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }
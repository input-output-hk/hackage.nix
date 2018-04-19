{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pdfinfo";
          version = "0.1.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Wrapper around the pdfinfo command.";
        description = "Just a wrapper around the pdfinfo command. See man pdfinfo.";
        buildType = "Simple";
      };
      components = {
        pdfinfo = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.process
            hsPkgs.mtl
          ];
        };
      };
    }
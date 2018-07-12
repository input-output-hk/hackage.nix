{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "snm";
          version = "0.0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Morrice <spoon@killersmurf.com>";
        author = "John Morrice <spoon@killersmurf.com>";
        homepage = "http://github.com/elginer/snm";
        url = "";
        synopsis = "The Simple Nice-Looking Manual Generator.";
        description = "snm allows you to write clean, web-friendly reports, user guides and manuals without having to edit fickle html.\n\nsnm allows you to structure your document in a modular fashion.\n\nsnm document sections are written in yaml and are easy to write and understand.\n\nsnm is a generator of small, valid xhtml files.\n\nRead the snm manual online: http:\\/\\/www.killersmurf.com\\/static\\/snm_help.html";
        buildType = "Simple";
      };
      components = {
        "snm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.HsSyck
            hsPkgs.spoonutil
            hsPkgs.safe
            hsPkgs.xhtml
          ];
        };
        exes = {
          "snm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.HsSyck
              hsPkgs.spoonutil
              hsPkgs.safe
            ];
          };
        };
      };
    }
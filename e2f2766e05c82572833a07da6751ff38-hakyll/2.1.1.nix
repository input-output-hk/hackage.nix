{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hakyll";
          version = "2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaspervdj@gmail.com";
        author = "Jasper Van der Jeugt";
        homepage = "http://jaspervdj.be/hakyll";
        url = "";
        synopsis = "A simple static site generator library.";
        description = "A simple static site generator library, mainly aimed at\ncreating blogs and brochure sites.";
        buildType = "Simple";
      };
      components = {
        hakyll = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.pandoc
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.binary
          ];
        };
      };
    }
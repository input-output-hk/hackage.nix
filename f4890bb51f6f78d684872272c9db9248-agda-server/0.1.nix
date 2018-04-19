{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "agda-server";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divipp@gmail.com";
        author = "Péter Diviánszky";
        homepage = "";
        url = "";
        synopsis = "Http server for Agda (prototype)";
        description = "@agda-server@ serves agda files as XML files.\n\nUsage: Run @agda-server@ (see --help for command line options). Then open a browser\nwith @localhost:8001//X.xml@ (or similar).\n\nSupported features: Type checking (whole module), links between modules (but not between library modules), basic support for holes.";
        buildType = "Simple";
      };
      components = {
        exes = {
          agda-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.cmdargs
              hsPkgs.utf8-string
              hsPkgs.xhtml
              hsPkgs.HJavaScript
              hsPkgs.pandoc
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.Agda
            ];
          };
        };
      };
    }
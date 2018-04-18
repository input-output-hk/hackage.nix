{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prolog-graph";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "bartsch@cs.uni-bonn.de";
        author = "Matthias Bartsch";
        homepage = "https://github.com/Erdwolf/prolog";
        url = "";
        synopsis = "A command line tool to visualize query resolution in Prolog.";
        description = "This package installs the command line tool `hsprolog-graph` that\ngenerates images of resolution trees for given Prolog queries.\n\nSee @hsprolog-graph --help@ for more information on usage.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsprolog-graph = {
            depends  = [
              hsPkgs.prolog
              hsPkgs.prolog-graph-lib
              hsPkgs.base
              hsPkgs.fgl
              hsPkgs.mtl
              hsPkgs.cmdargs
              hsPkgs.text
              hsPkgs.graphviz
            ];
          };
        };
      };
    }
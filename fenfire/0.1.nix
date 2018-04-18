{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "fenfire";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "fenfire-dev@nongnu.org";
        author = "Benja Fallenstein and Tuukka Hastrup";
        homepage = "http://fenfire.org/";
        url = "";
        synopsis = "Graph-based notetaking system";
        description = "Fenfire is a graph-based notetaking system. (We're\nplanning to add a kitchen sink soon.) It is developed\non the channel #fenfire on the Freenode IRC network.";
        buildType = "Custom";
      };
      components = {
        exes = {
          fenfire = {
            depends  = [
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.cairo
              hsPkgs.harp
              hsPkgs.template-haskell
            ];
            libs = [ pkgs.raptor ];
          };
          functortest = {
            depends  = [
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.cairo
              hsPkgs.harp
              hsPkgs.template-haskell
            ];
          };
          vobtest = {
            depends  = [
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.cairo
              hsPkgs.harp
              hsPkgs.template-haskell
            ];
          };
          darcs2rdf = {
            depends  = [
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.cairo
              hsPkgs.harp
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }
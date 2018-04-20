{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DataTreeView";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anotheraddress@gmx.de";
        author = "Daniel Schüssler";
        homepage = "";
        url = "";
        synopsis = "A GTK widget for displaying arbitrary Data.Data.Data instances";
        description = "Screenshot: <http://i.imgur.com/5JlhG.png>\n\nExample use:\n\n> import DataTreeView\n> main = simpleView [([\"hello\",\"world\",error \"this works too\"],25)]";
        buildType = "Simple";
      };
      components = {
        DataTreeView = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.glib
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.MissingH
            hsPkgs.gtk
            hsPkgs.deepseq
            hsPkgs.ListLike
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.transformers-base
          ];
        };
      };
    }
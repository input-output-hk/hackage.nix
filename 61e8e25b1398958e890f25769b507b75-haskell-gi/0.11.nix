{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-gi";
          version = "0.11";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson,\nIñaki García Etxebarria,\nJonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Generate Haskell bindings for GObject Introspection capable libraries";
        description = "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably\nGtk+, but many other libraries in the GObject ecosystem provide introspection data too.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haskell-gi = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.file-embed
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.pretty-show
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.bytestring
              hsPkgs.xdg-basedir
              hsPkgs.xml-conduit
              hsPkgs.haskell-gi-base
              hsPkgs.text
              hsPkgs.free
            ];
          };
        };
      };
    }
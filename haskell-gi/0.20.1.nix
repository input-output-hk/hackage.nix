{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-gi";
          version = "0.20.1";
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
        haskell-gi = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.Cabal
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.pretty-show
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.bytestring
            hsPkgs.xdg-basedir
            hsPkgs.xml-conduit
            hsPkgs.regex-tdfa
            hsPkgs.text
          ];
        };
        exes = {
          haskell-gi = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.pretty-show
              hsPkgs.haskell-gi
              hsPkgs.haskell-gi-base
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }
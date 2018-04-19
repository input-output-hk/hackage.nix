{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "elm-server";
          version = "0.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2011-2013 Evan Czaplicki";
        maintainer = "info@elm-lang.org";
        author = "Evan Czaplicki";
        homepage = "http://elm-lang.org";
        url = "";
        synopsis = "The Elm language server.";
        description = "This package provides a standalone, Happstack-based Elm server.";
        buildType = "Simple";
      };
      components = {
        exes = {
          elm-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.blaze-html
              hsPkgs.HTTP
              hsPkgs.happstack-server
              hsPkgs.deepseq
              hsPkgs.filepath
              hsPkgs.Elm
              hsPkgs.process
            ];
          };
        };
      };
    }
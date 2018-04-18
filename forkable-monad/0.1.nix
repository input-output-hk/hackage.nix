{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "forkable-monad";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Google Inc. 2010";
        maintainer = "dave@natulte.net";
        author = "David Anderson";
        homepage = "http://code.google.com/p/forkable-monad/";
        url = "";
        synopsis = "An implementation of forkIO for monad stacks.";
        description = "This module defines a more generic version of Control.Concurrent's\nforkIO, which can directly run some complex monadic actions as well\nas plain IO actions.";
        buildType = "Simple";
      };
      components = {
        forkable-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }
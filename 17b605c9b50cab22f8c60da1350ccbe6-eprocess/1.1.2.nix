{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "eprocess";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Fernando \"Brujo\" Benavides";
        maintainer = "greenmellon@gmail.com";
        author = "Fernando \"Brujo\" Benavides";
        homepage = "";
        url = "http://code.haskell.org/eprocess";
        synopsis = "*Very* basic Erlang-like process support for Haskell";
        description = "This library provides a *very* basic support for processes with message queues.  It was built using channels, threads and MVars. Since version 1.1.0 you can also kill a running process.";
        buildType = "Simple";
      };
      components = {
        eprocess = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mtl
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.MonadCatchIO-mtl
          ];
        };
      };
    }
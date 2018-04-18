{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "oi";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nobsun@sampou.org";
        author = "Nobuo Yamashita";
        homepage = "";
        url = "";
        synopsis = "Library for purely functional lazy interactions with the outer world.";
        description = "This package implements a data structure and operations on it for writing interactive program with no imperative flavor of IO monads.\n\n[N.B.] At the moment, APIs maybe change.";
        buildType = "Simple";
      };
      components = {
        oi = {
          depends  = [
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.comonad
            hsPkgs.filepath
          ];
        };
      };
    }
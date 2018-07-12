{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pianola";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Díaz Carrete";
        homepage = "";
        url = "";
        synopsis = "Remotely controlling Java Swing applications";
        description = "This is a library for remotely controlling\nJava Swing desktop applications that have been\ninstrumented with a special pianola agent.\nThe agent exposes the Swing component hierarchy\nover the network, and accepts requests for\ngenerating GUI events. The library handles the\ninteraction on the Haskell side.";
        buildType = "Simple";
      };
      components = {
        "pianola" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.msgpack
            hsPkgs.iteratee
            hsPkgs.attoparsec
            hsPkgs.attoparsec-iteratee
            hsPkgs.filepath
            hsPkgs.network
            hsPkgs.logict
            hsPkgs.errors
            hsPkgs.either
            hsPkgs.pipes
            hsPkgs.free
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.streams
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        tests = {
          "test-pianola" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.errors
              hsPkgs.streams
              hsPkgs.transformers
              hsPkgs.pianola
            ];
          };
        };
      };
    }
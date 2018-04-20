{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cgen";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Antti Salonen";
        maintainer = "ajsalonen at gmail dot com";
        author = "Antti Salonen";
        homepage = "http://anttisalonen.github.com/cgen";
        url = "";
        synopsis = "generates Haskell bindings and C wrappers for C++ libraries";
        description = "cgen parses C++ headers and generates C wrappers and\nHaskell bindings to a C++ library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cgen = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.safe
              hsPkgs.regex-posix
              hsPkgs.template-haskell
            ];
          };
          cgen-hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.safe
              hsPkgs.regex-posix
              hsPkgs.template-haskell
            ];
          };
          grgen = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.safe
              hsPkgs.regex-posix
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }
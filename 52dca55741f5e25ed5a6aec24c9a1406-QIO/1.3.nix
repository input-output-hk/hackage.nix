{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "QIO";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alexander.s.green@gmail.com";
        author = "Alexander S. Green";
        homepage = "https://github.com/alexandersgreen/qio-haskell";
        url = "";
        synopsis = "The Quantum IO Monad is a library for defining quantum computations in Haskell";
        description = "The Quantum IO Monad is a library for defining quantum computations in Haskell. It can be thought of as an embedded language within Haskell, and comes with functions for simulating the running of these quantum computations. The distribution contains many example computations written in QIO, including an implementation of Shor's algorithm.";
        buildType = "Simple";
      };
      components = {
        "QIO" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.old-time
          ];
        };
      };
    }
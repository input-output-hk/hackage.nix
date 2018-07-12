{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "monadIO";
          version = "0.10.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2010, Galois, Inc.";
        maintainer = "John Launchbury";
        author = "John Launchbury";
        homepage = "";
        url = "";
        synopsis = "Overloading of concurrency variables";
        description = "MonadIO provides for many IO operations to be\noverloaded over other IO-like monads.";
        buildType = "Simple";
      };
      components = {
        "monadIO" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.mtl
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "directed-cubical";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014, Michael D. Misamore";
        maintainer = "m.misamore@gmail.com";
        author = "Michael D. Misamore";
        homepage = "";
        url = "";
        synopsis = "Finite Directed Cubical Complexes and associated algorithms";
        description = "Finite Directed Cubical Complexes and associated algorithms";
        buildType = "Simple";
      };
      components = {
        directed-cubical = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.parallel
            hsPkgs.hashable
            hsPkgs.deepseq
            hsPkgs.QuickCheck
            hsPkgs.containers
          ];
        };
      };
    }
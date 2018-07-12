{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vector-strategies";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomas.dubuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "A parallel evaluation strategy for boxed vectors";
        description = "";
        buildType = "Simple";
      };
      components = {
        "vector-strategies" = {
          depends  = [
            hsPkgs.deepseq
            hsPkgs.parallel
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }
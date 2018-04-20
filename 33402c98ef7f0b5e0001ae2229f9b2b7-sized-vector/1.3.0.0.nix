{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sized-vector";
          version = "1.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Hiromi ISHII 2013";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "https://github.com/konn/sized-vector";
        url = "";
        synopsis = "Size-parameterized vector types and functions.";
        description = "Size-parameterized vector types and functions using a data-type promotion.";
        buildType = "Simple";
      };
      components = {
        sized-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
            hsPkgs.type-natural
            hsPkgs.constraints
            hsPkgs.monomorphic
            hsPkgs.equational-reasoning
            hsPkgs.hashable
            hsPkgs.deepseq
          ];
        };
        benchmarks = {
          coercion-bench = {
            depends  = [
              hsPkgs.criterion
              hsPkgs.progression
              hsPkgs.sized-vector
              hsPkgs.base
              hsPkgs.type-natural
              hsPkgs.parallel
              hsPkgs.deepseq
            ];
          };
        };
      };
    }
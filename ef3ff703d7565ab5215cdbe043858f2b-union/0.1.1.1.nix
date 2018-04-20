{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "union";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
        author = "Vladislav Zavialov";
        homepage = "";
        url = "";
        synopsis = "Extensible type-safe unions";
        description = "Extensible type-safe unions for Haskell with prisms using modern\nGHC features. Dual to vinyl records. Unions are also known as\ncorecords or polymorphic variants.\nNeither requires a @Typeable@ constraint nor uses unsafe coercions\nat the cost of linear time access (negligible in practice).";
        buildType = "Simple";
      };
      components = {
        union = {
          depends  = [
            hsPkgs.base
            hsPkgs.vinyl
            hsPkgs.profunctors
            hsPkgs.tagged
            hsPkgs.deepseq
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.union
              hsPkgs.lens
              hsPkgs.deepseq
              hsPkgs.criterion
            ];
          };
        };
      };
    }
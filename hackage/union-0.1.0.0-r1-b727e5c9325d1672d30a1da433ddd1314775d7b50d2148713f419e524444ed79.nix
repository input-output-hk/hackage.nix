{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "union";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Index Int <vlad.z.4096@gmail.com>";
      author = "Index Int";
      homepage = "";
      url = "";
      synopsis = "Extensible type-safe unions";
      description = "Extensible type-safe unions for Haskell with prisms using modern\nGHC features. Dual to vinyl records. Unions are also known as\ncorecords or polymorphic variants.\nNeither requires a @Typeable@ constraint nor uses unsafe coercions\nat the cost of a performance hit.";
      buildType = "Simple";
    };
    components = {
      "union" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vinyl)
          (hsPkgs.lens)
        ];
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.union)
            (hsPkgs.lens)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }
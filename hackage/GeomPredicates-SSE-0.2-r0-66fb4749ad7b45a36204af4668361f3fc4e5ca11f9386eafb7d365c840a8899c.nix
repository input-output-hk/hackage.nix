{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GeomPredicates-SSE";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "NHAlxr@gmail.com";
      author = "Neal Alexander";
      homepage = "";
      url = "";
      synopsis = "Geometric predicates (Intel SSE)";
      description = "Exact, hardware based computation of geometric predicates using an SSE based interval filter and the ESSA algorithm.\nSee \\\"Exact computation of Voronoi diagram and Delaunay triangulation\\\" by Marina Gavrilova, Helmut Ratschek and Jon Rokne.\nThis package is a specialization of the @GeomPredicates@ package and uses it's primitives defined under @Numeric.Geometric.Primitives@.\nThis package requires a CPU with @Streaming SIMD Extensions 2@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.GeomPredicates)
        ];
      };
    };
  }
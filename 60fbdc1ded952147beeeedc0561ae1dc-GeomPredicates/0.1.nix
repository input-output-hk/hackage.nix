{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GeomPredicates";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "NHAlxr@gmail.com";
        author = "Neal Alexander";
        homepage = "";
        url = "";
        synopsis = "Geometric predicates";
        description = "Exact computation of common geometric predicates.";
        buildType = "Simple";
      };
      components = {
        GeomPredicates = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lin-alg";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012";
        maintainer = "dagitj@gmail.com";
        author = "Jason Dagit";
        homepage = "";
        url = "";
        synopsis = "Low-dimensional matrices and vectors for graphics and physics";
        description = "";
        buildType = "Simple";
      };
      components = {
        "lin-alg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.NumInstances
            hsPkgs.vector
          ];
        };
      };
    }
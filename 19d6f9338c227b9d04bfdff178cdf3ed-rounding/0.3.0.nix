{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rounding";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://patch-tag.com/r/ekmett/rounding";
        url = "";
        synopsis = "Explicit floating point rounding mode wrappers";
        description = "";
        buildType = "Simple";
      };
      components = {
        rounding = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.numeric-extras
          ];
        };
      };
    }
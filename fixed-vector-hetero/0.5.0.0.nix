{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fixed-vector-hetero";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "http://github.org/Shimuuar/fixed-vector-hetero";
        url = "";
        synopsis = "Generic heterogeneous vectors";
        description = "Generic heterogeneous vectors";
        buildType = "Simple";
      };
      components = {
        fixed-vector-hetero = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.fixed-vector
            hsPkgs.primitive
          ];
        };
      };
    }
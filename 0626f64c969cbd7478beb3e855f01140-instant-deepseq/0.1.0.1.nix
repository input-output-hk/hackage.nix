{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "instant-deepseq";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2015";
        maintainer = "renzo@carbonara.com.ar";
        author = "Renzo Carbonara";
        homepage = "";
        url = "";
        synopsis = "Generic NFData instances through instant-generics";
        description = "";
        buildType = "Simple";
      };
      components = {
        instant-deepseq = {
          depends  = [
            hsPkgs.deepseq
            hsPkgs.base
            hsPkgs.instant-generics
          ];
        };
      };
    }
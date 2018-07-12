{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "writer-cps-lens";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan, Edward A. Kmett";
        homepage = "https://github.com/louispan/writer-cps-lens#readme";
        url = "";
        synopsis = "Lens instances for the stricter CPS WriterT and RWST";
        description = "Control.Lens Strict, Wrapped, Magnify and Zoomed instances for the stricter WriterT and RWST from writer-cps-transformers.";
        buildType = "Simple";
      };
      components = {
        "writer-cps-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.writer-cps-transformers
            hsPkgs.transformers
            hsPkgs.lens
            hsPkgs.profunctors
            hsPkgs.writer-cps-mtl
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "csound-catalog";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/csound-catalog";
        url = "";
        synopsis = "a gallery of Csound instruments.";
        description = "A gallery of Csound instruments.";
        buildType = "Simple";
      };
      components = {
        csound-catalog = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.csound-expression
            hsPkgs.csound-sampler
            hsPkgs.sharc-timbre
          ];
        };
      };
    }
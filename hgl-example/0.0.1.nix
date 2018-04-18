{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hgl-example";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://code.haskell.org/~thielema/hgl-example/";
        url = "";
        synopsis = "Various animations generated using HGL";
        description = "Various animations generated using HGL:\n\n* Locomotive with asymmetrically mounted wheels\n\n* Rotating stars\n\n* Rotating spiral\n\n* Rotating Lissajous curve\n\n* Probabilistic Sierpinski triangle";
        buildType = "Simple";
      };
      components = {
        exes = {
          hgl-example = {
            depends  = [
              hsPkgs.HTam
              hsPkgs.HGL
              hsPkgs.random
              hsPkgs.array
              hsPkgs.base
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-has";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "https://github.com/winterland1989/data-has";
        url = "";
        synopsis = "Simple extensible product";
        description = "Simple extensible product";
        buildType = "Simple";
      };
      components = {
        data-has = {
          depends  = [ hsPkgs.base ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-has
              hsPkgs.criterion
              hsPkgs.transformers
            ];
          };
        };
      };
    }
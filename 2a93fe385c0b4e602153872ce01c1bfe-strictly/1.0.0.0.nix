{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "strictly";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/strictly#readme";
        url = "";
        synopsis = "Combinators for strictifying functions";
        description = "";
        buildType = "Simple";
      };
      components = {
        strictly = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }
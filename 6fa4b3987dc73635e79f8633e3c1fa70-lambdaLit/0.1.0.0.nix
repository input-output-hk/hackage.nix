{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambdaLit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "raphaelsimeon@gmail.com";
        author = "Raphaël Mongeau";
        homepage = "";
        url = "";
        synopsis = "...";
        description = "An repl using the lambdaBase package";
        buildType = "Simple";
      };
      components = {
        exes = {
          "lambdaList" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lambdaBase
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.haskeline
              hsPkgs.mtl
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "WeberLogic";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cameronbwhite90@gmail.com";
        author = "Cameron Brandon White";
        homepage = "https://github.com/cameronbwhite/WeberLogic";
        url = "";
        synopsis = "Logic interpreter";
        description = "Logic interpreter";
        buildType = "Simple";
      };
      components = {
        WeberLogic = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
        exes = {
          WeberLogic = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
            ];
          };
        };
      };
    }
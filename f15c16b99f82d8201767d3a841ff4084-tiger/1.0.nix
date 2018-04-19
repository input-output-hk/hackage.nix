{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tiger";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Universiteit Utrecht";
        maintainer = "Doaitse Swierstra";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Tiger Compiler of Universiteit Utrecht";
        description = "Tiger compiler";
        buildType = "Simple";
      };
      components = {
        exes = {
          tiger = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.array
              hsPkgs.uulib
            ];
          };
        };
      };
    }
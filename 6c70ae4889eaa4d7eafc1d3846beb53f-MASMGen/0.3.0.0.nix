{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MASMGen";
          version = "0.3.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "2016 petercommand";
        maintainer = "petercommand@gmail.com";
        author = "Ruey-Lin Hsu (petercommand)";
        homepage = "";
        url = "";
        synopsis = "Generate MASM code from haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "MASMGen" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        tests = {
          "Main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
      };
    }
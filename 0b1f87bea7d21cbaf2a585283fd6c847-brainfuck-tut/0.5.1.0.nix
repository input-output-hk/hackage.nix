{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "brainfuck-tut";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cpp.cabrera@gmail.com";
        author = "Alejandro Cabrera";
        homepage = "";
        url = "";
        synopsis = "A simple BF interpreter.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "brainfuck-tut" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
        exes = {
          "bfh" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.brainfuck-tut
            ];
          };
        };
      };
    }
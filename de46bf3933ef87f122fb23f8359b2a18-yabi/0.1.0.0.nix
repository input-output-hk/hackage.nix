{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yabi";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "fgaz@users.noreply.github.com";
        author = "Francesco Gazzetta";
        homepage = "https://github.com/fgaz/yabi";
        url = "";
        synopsis = "Yet Another Brainfuck Interpreter";
        description = "Yet Another Brainfuck Interpreter";
        buildType = "Simple";
      };
      components = {
        exes = {
          "yabi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.word8
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yabi-muno";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tenorbiel@gmail.com";
        author = "Tenor Biel";
        homepage = "";
        url = "";
        synopsis = "Yet Another Brainfuck Interpreter";
        description = "Yet Another Brainfuck Interpreter for muno";
        buildType = "Simple";
      };
      components = {
        yabi-muno = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.bytestring
          ];
        };
        exes = {
          yabi = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.yabi
            ];
          };
        };
      };
    }
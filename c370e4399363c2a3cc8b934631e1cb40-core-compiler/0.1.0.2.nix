{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "core-compiler";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "2016 David Anekstein";
        maintainer = "aneksteind@gmail.com";
        author = "David Anekstein";
        homepage = "https://github.com/aneksteind/Core#readme";
        url = "";
        synopsis = "compile your own mini functional language with Core";
        description = "This package doubles as a compiler and as a module with which anyone can compile their own functional programming language by parsing into the 'CoreExpr' datatype";
        buildType = "Simple";
      };
      components = {
        core-compiler = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        exes = {
          core-compiler-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.core-compiler
              hsPkgs.array
            ];
          };
        };
      };
    }
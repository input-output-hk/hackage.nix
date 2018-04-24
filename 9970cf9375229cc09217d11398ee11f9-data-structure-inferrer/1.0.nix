{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-structure-inferrer";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Aleksander Balicki <balicki.aleksander@gmail.com>";
        author = "Aleksander Balicki";
        homepage = "http://github.com/alistra/data-structure-inferrer";
        url = "";
        synopsis = "Program that infers the fastest data structure available for your program";
        description = "This project is meant to be a compiler feature/wrapper that analyzes your code and chooses the best data structure depending on your source code. It analyzes the functions used on a wildcard data structure and chooses the type of structure that minimizes the time complexity. It will support C language and hopefully some other languages too.";
        buildType = "Simple";
      };
      components = {
        exes = {
          dsinf = {
            depends  = [
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.language-c
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.safe
              hsPkgs.utility-ht
              hsPkgs.deepseq
              hsPkgs.derive
            ];
            build-tools = [
              hsPkgs.alex
              hsPkgs.happy
            ];
          };
        };
      };
    }
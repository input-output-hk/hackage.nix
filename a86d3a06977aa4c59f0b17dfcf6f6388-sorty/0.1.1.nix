{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sorty";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        author = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Sort lines per file size";
        description = "This simple tool sorts input filelines by first collumn suffixed by unit. Recognized units:\n\n> k = 1000\n> m = 1000 * k\n> g = 1000 * m\n\n> K = 1024\n> M = 1024 * K\n> G = 1024 * G\n\nI needed this for output from 'du -h':\n\n> \$ du -h -a\n> 4,0K   ./sorty.cabal\n> 20K   ./sorty.o\n> 0   ./.#sorty.cabal\n> 4,0K   ./#sorty.cabal#\n> 4,0K   ./sorty.hs~\n> 4,0K   ./sorty.hs\n> 4,0K   ./sorty.hi\n> 868K   ./sorty\n> 912K   .\n\nFiltered through sorty:\n\n> \$ du -h -a | ./sorty\n>\n> 0   ./.#sorty.cabal\n> 4,0K   ./sorty.cabal\n> 4,0K   ./#sorty.cabal#\n> 4,0K   ./sorty.hs~\n> 4,0K   ./sorty.hs\n> 4,0K   ./sorty.hi\n> 20K   ./sorty.o\n> 868K   ./sorty\n> 912K   .";
        buildType = "Simple";
      };
      components = {
        exes = {
          sorty = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.base
            ];
          };
        };
      };
    }
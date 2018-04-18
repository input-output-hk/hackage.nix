{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.3";
        identifier = {
          name = "utf8-light";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Matt Morrow";
        maintainer = "Matt Morrow <mjm2002@gmail.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "utf8-light";
        description = "Lightweight UTF8 handling. Haddock docs are at\n<http://code.haskell.org/~morrow/code/haskell/utf8-light/haddock/>.";
        buildType = "Simple";
      };
      components = {
        utf8-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          utf8flip = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
        };
      };
    }
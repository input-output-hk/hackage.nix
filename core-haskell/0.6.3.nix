{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "core-haskell";
          version = "0.6.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "c.x.bao@student.ucc.ie";
        author = "ChengXi Bao";
        homepage = "https://github.com/happlebao/Core-Haskell";
        url = "";
        synopsis = "A subset of Haskell using in UCC for teaching purpose";
        description = "A subset of Haskell using in UCC for teaching purpose.\nIt enables a tiny subset of Haskell default, but the syntax can be customized,\nteacher can enable more syntax along with the teaching progress.";
        buildType = "Simple";
      };
      components = {
        exes = {
          core-haskell = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.hint
              hsPkgs.haskeline
            ];
          };
        };
      };
    }
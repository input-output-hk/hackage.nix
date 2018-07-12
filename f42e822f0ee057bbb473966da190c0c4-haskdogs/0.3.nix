{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskdogs";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ierton@gmail.com";
        author = "Sergey Mironov";
        homepage = "http://github.com/ierton/haskdogs";
        url = "";
        synopsis = "Generate ctags file for haskell project directory and it's deps";
        description = "haskdogs is a small shellscript-like tool which creates tag file for entire\nhaskell project directory. It takes into account first-level dependencies by\nrecursively scanning imports and adding matching packages to the final\ntag list.\nAs a result, programmer can use his/her text editor supporting tags (vim, for\nexample) to jump directly to definition of any standard or foreign function\nhe/she uses.\nNote, that haskdogs calls some Unix shell commands like 'test' or 'mkdir'\nso this tool will likely fail to work on pure Windows platforms.\nStarting from 0.3, cmdline args will be passed to hasktags followed by a\nfilelist generated.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "haskdogs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.HSH
              hsPkgs.filepath
            ];
          };
        };
      };
    }
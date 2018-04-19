{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-fast-devel";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tacla.yamada@gmail.com";
        author = "Arne Link, Pedro Tacla Yamada";
        homepage = "https://github.com/haskellbr/yesod-fast-devel#readme";
        url = "";
        synopsis = "Fast live-reloading for yesod applications.";
        description = "https://github.com/haskellbr/yesod-fast-devel";
        buildType = "Simple";
      };
      components = {
        exes = {
          yesod-fast-devel = {
            depends  = [
              hsPkgs.Glob
              hsPkgs.ansi-terminal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.pureMD5
              hsPkgs.stm
              hsPkgs.system-filepath
              hsPkgs.temporary
              hsPkgs.text
            ];
          };
        };
      };
    }
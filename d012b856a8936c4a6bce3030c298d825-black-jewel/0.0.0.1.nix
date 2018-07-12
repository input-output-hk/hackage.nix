{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "black-jewel";
          version = "0.0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "KAction@gnu.org";
        author = "Dmitry Bogatov";
        homepage = "http://git.kaction.name/black-jewel";
        url = "";
        synopsis = "The pirate bay client.";
        description = "Interactive torrent search utility. It support following commands:\n\n'find' -- execute search\n\n'more' -- find more results.\n\n'list' -- display found results.\n\n'show' -- display meta-information via your pager.\n\n'save' -- save corresponding .torrent file in current directory.\n\nParsing torrent takes time, so program use lazy IO to not waste user's time.\nHere is need for 'more' command.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "black-jewel" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HTTP
              hsPkgs.tagsoup
              hsPkgs.bytestring
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.download
              hsPkgs.hxt
              hsPkgs.transformers
              hsPkgs.haskeline
              hsPkgs.safe
              hsPkgs.ansi-terminal
              hsPkgs.process
              hsPkgs.zlib
            ];
          };
        };
        tests = {
          "dummy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
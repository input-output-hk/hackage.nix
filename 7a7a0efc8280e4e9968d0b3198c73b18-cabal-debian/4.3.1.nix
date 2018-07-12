{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-debian";
          version = "4.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "http://src.seereason.com/debian-tools/cabal-debian";
        url = "";
        synopsis = "Create a debianization for a cabal package";
        description = "This package provides two methods for generating the debianization\n(i.e. the contents of the 'debian' subdirectory) for a cabal package.\nAn executable named cabal-debian, and a library API to handle more\ncomplex packaging issues.  For documentation of the executable run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
        buildType = "Simple";
      };
      components = {
        "cabal-debian" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.deepseq
            hsPkgs.Diff
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hsemail
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.regex-tdfa
            hsPkgs.set-extra
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.Unixutils
            hsPkgs.utf8-string
            hsPkgs.debian
          ];
        };
        exes = {
          "cabal-debian" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.data-lens
              hsPkgs.data-lens-template
              hsPkgs.debian
              hsPkgs.deepseq
              hsPkgs.Diff
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hsemail
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pureMD5
              hsPkgs.regex-tdfa
              hsPkgs.set-extra
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.Unixutils
              hsPkgs.utf8-string
              hsPkgs.debian
            ];
          };
          "cabal-debian-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.data-lens
              hsPkgs.data-lens-template
              hsPkgs.debian
              hsPkgs.deepseq
              hsPkgs.Diff
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hsemail
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.pureMD5
              hsPkgs.regex-tdfa
              hsPkgs.set-extra
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.Unixutils
              hsPkgs.utf8-string
              hsPkgs.debian
            ];
          };
        };
      };
    }
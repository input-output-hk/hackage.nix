{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      ghcjs-support = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-debian";
          version = "4.15";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "http://src.seereason.com/cabal-debian";
        url = "";
        synopsis = "Create a debianization for a cabal package";
        description = "This package provides two methods for generating the debianization\n(i.e. the contents of the 'debian' subdirectory) for a cabal package.\nAn executable named cabal-debian, and a library API to handle more\ncomplex packaging issues.  For documentation of the executable run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
        buildType = "Simple";
      };
      components = {
        cabal-debian = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.deepseq
            hsPkgs.Diff
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hsemail
            hsPkgs.HUnit
            hsPkgs.memoize
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
          ] ++ [ hsPkgs.Cabal ];
        };
        exes = {
          cabal-debian = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabal-debian
              hsPkgs.data-lens
              hsPkgs.mtl
            ] ++ [ hsPkgs.Cabal ];
          };
          cabal-debian-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabal-debian
              hsPkgs.containers
              hsPkgs.data-lens
              hsPkgs.debian
              hsPkgs.filepath
              hsPkgs.hsemail
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.text
            ] ++ [ hsPkgs.Cabal ];
          };
        };
      };
    }
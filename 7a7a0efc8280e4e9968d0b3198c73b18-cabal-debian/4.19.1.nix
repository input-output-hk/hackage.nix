{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      local-debian = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-debian";
          version = "4.19.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "https://github.com/ddssff/cabal-debian";
        url = "";
        synopsis = "Create a Debianization for a Cabal package";
        description = "This package supports the generation of a package Debianization (i.e.\nthe files in the @debian@ subdirectory) for a cabal package,\neither through a library API or using the cabal-debian executable.\nFor documentation of the executable, run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
        buildType = "Simple";
      };
      components = {
        cabal-debian = {
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
            hsPkgs.memoize
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.regex-tdfa
            hsPkgs.set-extra
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.Unixutils
            hsPkgs.utf8-string
          ] ++ (if _flags.local-debian
            then [
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.ListLike
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.old-locale
              hsPkgs.process-extras
              hsPkgs.regex-compat
              hsPkgs.template-haskell
              hsPkgs.time
            ]
            else [ hsPkgs.debian ]);
        };
        exes = {
          cabal-debian = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.data-lens
              hsPkgs.mtl
              hsPkgs.pretty
            ] ++ (if _flags.local-debian
              then [
                hsPkgs.bytestring
                hsPkgs.containers
                hsPkgs.data-lens-template
                hsPkgs.deepseq
                hsPkgs.Diff
                hsPkgs.directory
                hsPkgs.exceptions
                hsPkgs.filepath
                hsPkgs.hsemail
                hsPkgs.ListLike
                hsPkgs.memoize
                hsPkgs.network
                hsPkgs.network-uri
                hsPkgs.old-locale
                hsPkgs.parsec
                hsPkgs.prettyclass
                hsPkgs.process
                hsPkgs.process-extras
                hsPkgs.pureMD5
                hsPkgs.regex-compat
                hsPkgs.regex-tdfa
                hsPkgs.set-extra
                hsPkgs.syb
                hsPkgs.template-haskell
                hsPkgs.text
                hsPkgs.time
                hsPkgs.unix
                hsPkgs.Unixutils
                hsPkgs.utf8-string
              ]
              else [
                hsPkgs.debian
                hsPkgs.cabal-debian
              ]);
          };
          cabal-debian-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.data-lens
              hsPkgs.filepath
              hsPkgs.hsemail
              hsPkgs.HUnit
              hsPkgs.prettyclass
              hsPkgs.process
              hsPkgs.text
            ] ++ (if _flags.local-debian
              then [
                hsPkgs.bytestring
                hsPkgs.containers
                hsPkgs.data-lens-template
                hsPkgs.deepseq
                hsPkgs.Diff
                hsPkgs.directory
                hsPkgs.exceptions
                hsPkgs.filepath
                hsPkgs.hsemail
                hsPkgs.ListLike
                hsPkgs.memoize
                hsPkgs.mtl
                hsPkgs.network
                hsPkgs.network-uri
                hsPkgs.old-locale
                hsPkgs.parsec
                hsPkgs.pretty
                hsPkgs.prettyclass
                hsPkgs.process
                hsPkgs.process-extras
                hsPkgs.pureMD5
                hsPkgs.regex-compat
                hsPkgs.regex-tdfa
                hsPkgs.set-extra
                hsPkgs.syb
                hsPkgs.template-haskell
                hsPkgs.text
                hsPkgs.time
                hsPkgs.unix
                hsPkgs.Unixutils
                hsPkgs.utf8-string
              ]
              else [
                hsPkgs.debian
                hsPkgs.cabal-debian
              ]);
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-debian";
          version = "3.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "http://src.seereason.com/cabal-debian";
        url = "";
        synopsis = "Create a debianization for a cabal package";
        description = "Tool for creating debianizations of Haskell packages based on the .cabal\nfile.  If apt-file is installed it will use it to discover what is the\ndebian package name of a C library.";
        buildType = "Simple";
      };
      components = {
        "cabal-debian" = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.applicative-extras
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.debian
            hsPkgs.Diff
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hsemail
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.regex-tdfa
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.unix
            hsPkgs.Unixutils
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "cabal-debian" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabal-debian
              hsPkgs.containers
            ];
          };
          "cabal-debian-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cabal-debian
              hsPkgs.Diff
              hsPkgs.HUnit
            ];
          };
        };
      };
    }
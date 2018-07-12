{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cabal19 = true;
      listlike = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "debian";
          version = "3.79.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox <dsf@seereason.com>, Jeremy Shaw <jeremy@seereason.com>, Clifford Beshers <beshers@seereason.com>";
        homepage = "http://src.seereason.com/haskell-debian";
        url = "";
        synopsis = "Modules for working with the Debian package system";
        description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
        buildType = "Simple";
      };
      components = {
        "debian" = {
          depends  = ([
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bzlib
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.HaXml
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.regex-compat
            hsPkgs.regex-tdfa
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.Unixutils
            hsPkgs.utf8-string
            hsPkgs.zlib
          ] ++ (if _flags.listlike
            then [ hsPkgs.process-listlike ]
            else [
              hsPkgs.process-extras
            ])) ++ [ hsPkgs.Cabal ];
        };
        exes = {
          "fakechanges" = {
            depends  = [ hsPkgs.Cabal ];
          };
          "debian-report" = {
            depends  = [ hsPkgs.Cabal ];
          };
          "apt-get-build-depends" = {
            depends  = [ hsPkgs.Cabal ];
          };
        };
      };
    }
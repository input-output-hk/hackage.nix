{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "debian";
        version = "3.33";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david@seereason.com";
      author = "David Fox";
      homepage = "http://src.seereason.com/ghc610/haskell-debian-3";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-posix)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.bzlib)
          (hsPkgs.Extra)
          (hsPkgs.HaXml)
          (hsPkgs.Unixutils)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "fakechanges" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.bzlib)
            (hsPkgs.Extra)
            (hsPkgs.HaXml)
            (hsPkgs.Unixutils)
            (hsPkgs.zlib)
          ];
        };
        "debian-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.bzlib)
            (hsPkgs.Extra)
            (hsPkgs.HaXml)
            (hsPkgs.Unixutils)
            (hsPkgs.zlib)
          ];
        };
        "cabal-debian" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.bzlib)
            (hsPkgs.Extra)
            (hsPkgs.HaXml)
            (hsPkgs.Unixutils)
            (hsPkgs.zlib)
            (hsPkgs.Cabal)
          ];
        };
        "apt-get-build-depends" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.bzlib)
            (hsPkgs.Extra)
            (hsPkgs.HaXml)
            (hsPkgs.Unixutils)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }
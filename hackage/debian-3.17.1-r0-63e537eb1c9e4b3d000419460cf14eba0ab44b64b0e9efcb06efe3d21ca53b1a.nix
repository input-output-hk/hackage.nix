{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "debian"; version = "3.17.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david@seereason.com";
      author = "David Fox";
      homepage = "http://seereason.org/";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering almost every aspect of the Debian\npackaging system, including low level data types such as version numbers\nand dependency relations, on up to the types necessary for computing and\ninstalling build dependencies, building source and binary packages,\nand inserting them into a repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.Extra)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
          (hsPkgs.regex-posix)
          (hsPkgs.bzlib)
          (hsPkgs.zlib)
          (hsPkgs.HaXml)
          (hsPkgs.filepath)
          ];
        };
      exes = {
        "fakechanges" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.Unixutils)
            (hsPkgs.Extra)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.regex-posix)
            (hsPkgs.bzlib)
            (hsPkgs.zlib)
            (hsPkgs.HaXml)
            (hsPkgs.filepath)
            ];
          };
        "debian-report" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.Unixutils)
            (hsPkgs.Extra)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.regex-posix)
            (hsPkgs.bzlib)
            (hsPkgs.zlib)
            (hsPkgs.HaXml)
            (hsPkgs.filepath)
            ];
          };
        "debian-versions" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.Unixutils)
            (hsPkgs.Extra)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.regex-posix)
            (hsPkgs.bzlib)
            (hsPkgs.zlib)
            (hsPkgs.HaXml)
            (hsPkgs.filepath)
            ];
          };
        "cabal-debian" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.Unixutils)
            (hsPkgs.Extra)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.regex-posix)
            (hsPkgs.bzlib)
            (hsPkgs.zlib)
            (hsPkgs.HaXml)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            ];
          };
        };
      };
    }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cabal19 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "debian";
        version = "3.65";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>, Jeremy Shaw <jeremy@seereason.com>, Clifford Beshers <beshers@seereason.com>";
      homepage = "http://src.seereason.com/haskell-debian-new";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.HaXml)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.pretty-class)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-tdfa)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ] ++ [ (hsPkgs.Cabal) ];
      };
      exes = {
        "fakechanges" = {
          depends = [ (hsPkgs.Cabal) ];
        };
        "debian-report" = {
          depends = [ (hsPkgs.Cabal) ];
        };
        "apt-get-build-depends" = {
          depends = [ (hsPkgs.Cabal) ];
        };
      };
    };
  }
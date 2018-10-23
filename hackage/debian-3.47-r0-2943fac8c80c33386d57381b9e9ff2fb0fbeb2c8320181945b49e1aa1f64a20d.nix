{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { cabal19 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "debian";
        version = "3.47";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david@seereason.com";
      author = "David Fox";
      homepage = "http://src.seereason.com/haskell-debian";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
    };
    components = {
      "debian" = {
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
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.bzlib)
          (hsPkgs.HaXml)
          (hsPkgs.Unixutils)
          (hsPkgs.zlib)
          (hsPkgs.HUnit)
        ] ++ [ (hsPkgs.Cabal) ];
      };
      exes = {
        "fakechanges" = {
          depends  = [ (hsPkgs.Cabal) ];
        };
        "debian-report" = {
          depends  = [ (hsPkgs.Cabal) ];
        };
        "cabal-debian" = {
          depends  = [
            (hsPkgs.Cabal)
          ] ++ [ (hsPkgs.Cabal) ];
        };
        "apt-get-build-depends" = {
          depends  = [ (hsPkgs.Cabal) ];
        };
      };
    };
  }
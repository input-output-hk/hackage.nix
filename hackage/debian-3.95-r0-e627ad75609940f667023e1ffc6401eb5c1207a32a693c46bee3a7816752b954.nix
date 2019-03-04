{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; pretty-new = true; };
    package = {
      specVersion = "1.9";
      identifier = { name = "debian"; version = "3.95"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>, Jeremy Shaw <jeremy@seereason.com>, Clifford Beshers <beshers@seereason.com>";
      homepage = "https://github.com/ddssff/debian-haskell";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.HaXml)
          (hsPkgs.hostname)
          (hsPkgs.HUnit)
          (hsPkgs.lens)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.pureMD5)
          (hsPkgs.QuickCheck)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-tdfa)
          (hsPkgs.SHA)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.th-orphans)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
          ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ])) ++ (if flags.pretty-new
          then [ (hsPkgs.pretty) ]
          else [ (hsPkgs.pretty) (hsPkgs.prettyclass) ]);
        };
      exes = {
        "fakechanges" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.debian)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ];
          };
        "debian-report" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.debian)
            (hsPkgs.HaXml)
            (hsPkgs.unix)
            (hsPkgs.pretty)
            ];
          };
        "apt-get-build-depends" = {
          depends = [ (hsPkgs.base) (hsPkgs.debian) (hsPkgs.process) ];
          };
        };
      tests = {
        "debian-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.debian)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.text)
            ] ++ (if flags.pretty-new
            then [ (hsPkgs.pretty) ]
            else [ (hsPkgs.pretty) (hsPkgs.prettyclass) ]);
          };
        };
      };
    }
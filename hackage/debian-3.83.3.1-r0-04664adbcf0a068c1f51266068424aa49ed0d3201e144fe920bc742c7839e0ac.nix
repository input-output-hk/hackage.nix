{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = true;
      listlike = true;
    };
    package = {
      specVersion = "1.9";
      identifier = {
        name = "debian";
        version = "3.83.3.1";
      };
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
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.HaXml)
          (hsPkgs.HUnit)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-tdfa)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [
            (hsPkgs.network)
          ])) ++ (if flags.listlike
          then [
            (hsPkgs.process-listlike)
          ]
          else [
            (hsPkgs.process-extras)
          ]);
      };
      exes = {
        "fakechanges" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.debian)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "debian-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.debian)
            (hsPkgs.HaXml)
            (hsPkgs.unix)
            (hsPkgs.pretty)
          ];
        };
        "apt-get-build-depends" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.debian)
            (hsPkgs.process)
          ];
        };
        "debian-tests" = {
          depends  = ([
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.debian)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.HUnit)
            (hsPkgs.ListLike)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-tdfa)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network)
              (hsPkgs.network-uri)
            ]
            else [
              (hsPkgs.network)
            ])) ++ (if flags.listlike
            then [
              (hsPkgs.process-listlike)
            ]
            else [
              (hsPkgs.process-extras)
            ]);
        };
      };
    };
  }
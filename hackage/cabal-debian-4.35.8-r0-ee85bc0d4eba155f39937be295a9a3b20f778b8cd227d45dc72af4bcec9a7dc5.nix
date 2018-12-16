{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { pretty-112 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-debian";
        version = "4.35.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2014, David Fox, Jeremy Shaw";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "https://github.com/ddssff/cabal-debian";
      url = "";
      synopsis = "Create a Debianization for a Cabal package";
      description = "This package supports the generation of a package Debianization (i.e.\nthe files in the @debian@ subdirectory) for a cabal package,\neither through a library API or using the cabal-debian executable.\nFor documentation of the executable, run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.debian)
          (hsPkgs.deepseq)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hsemail)
          (hsPkgs.HUnit)
          (hsPkgs.lens)
          (hsPkgs.memoize)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.newtype-generics)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-tdfa)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.utf8-string)
          (hsPkgs.optparse-applicative)
          (hsPkgs.ansi-wl-pprint)
        ] ++ (if flags.pretty-112
          then [ (hsPkgs.pretty) ]
          else [
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
          ]);
      };
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cabal-debian)
            (hsPkgs.Cabal)
            (hsPkgs.debian)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.Unixutils)
          ] ++ (if flags.pretty-112
            then [ (hsPkgs.pretty) ]
            else [
              (hsPkgs.pretty)
              (hsPkgs.prettyclass)
            ]);
        };
      };
      tests = {
        "cabal-debian-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cabal-debian)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.debian)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hsemail)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.process)
            (hsPkgs.text)
          ] ++ (if flags.pretty-112
            then [ (hsPkgs.pretty) ]
            else [
              (hsPkgs.pretty)
              (hsPkgs.prettyclass)
            ]);
        };
      };
    };
  }
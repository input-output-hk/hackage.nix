{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      tests = false;
      local-debian = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-debian";
        version = "4.24.6";
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
      "cabal-debian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hsemail)
          (hsPkgs.HUnit)
          (hsPkgs.lens)
          (hsPkgs.memoize)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-tdfa)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.utf8-string)
        ] ++ (if flags.local-debian
          then [
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.exceptions)
            (hsPkgs.HaXml)
            (hsPkgs.ListLike)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.old-locale)
            (hsPkgs.process-extras)
            (hsPkgs.regex-compat)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.zlib)
          ]
          else [ (hsPkgs.debian) ]);
      };
      exes = {
        "cabal-debian" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-debian)
            (hsPkgs.Cabal)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
          ] ++ pkgs.lib.optional (!flags.local-debian) (hsPkgs.debian);
        };
        "cabal-debian-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-debian)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.hsemail)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.prettyclass)
            (hsPkgs.process)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!flags.local-debian) (hsPkgs.debian);
        };
      };
    };
  }
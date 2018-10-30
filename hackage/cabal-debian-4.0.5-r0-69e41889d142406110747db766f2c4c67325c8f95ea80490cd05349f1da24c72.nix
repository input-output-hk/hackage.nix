{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-debian";
        version = "4.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/debian-tools/cabal-debian";
      url = "";
      synopsis = "Create a debianization for a cabal package";
      description = "This package provides two methods for generating the debianization\n(i.e. the contents of the 'debian' subdirectory) for a cabal package.\nAn executable named cabal-debian, and a library API to handle more\ncomplex packaging issues.  For documentation of the executable run\n@cabal-debian --help@, for documentation of the library API follow\nthe link to the @Debian.Debianize@ module below.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hsemail)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-tdfa)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.debian)
        ];
      };
      exes = {
        "cabal-debian" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.debian)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hsemail)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-tdfa)
            (hsPkgs.set-extra)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.debian)
          ];
        };
        "cabal-debian-tests" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.debian)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hsemail)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-tdfa)
            (hsPkgs.set-extra)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.debian)
          ];
        };
      };
    };
  }
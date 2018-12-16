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
      specVersion = "1.6";
      identifier = {
        name = "cabal-rpm";
        version = "0.8.0";
      };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2013 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <juhp@community.haskell.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM package creator for Haskell Cabal-based packages";
      description = "This package generates RPM spec files from Haskell Cabal packages.\n\nRecent changes:\n\n* 0.8.0: new simpler revised Fedora packaging; check external commands available\n\n* 0.7.1: various bugfixes and minor improvments\n\n* 0.7.0: command arg for spec, srpm, or build; installs existing packaged depends with sudo yum\n\n* 0.6.6: generate depends for extra-libraries, build-tools, and pkgconfig-depends\n\n* 0.6.5: simplify BuildRequires without versions and drop explicit hscolour\n\n* 0.6.4: add manpage and cabal-rpm-diff wrapper\n\n* 0.6.3: accept tarball arg, use temporary working directory, and add manpage\n\n* 0.6.2: fix L/GPL version output\n\n* 0.6.1: fix bugs for 'cabal-rpm pkg' unpacking and extra docs\n\n* 0.6.0: new update and release for Cabal >= 1.10";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cblrpm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }
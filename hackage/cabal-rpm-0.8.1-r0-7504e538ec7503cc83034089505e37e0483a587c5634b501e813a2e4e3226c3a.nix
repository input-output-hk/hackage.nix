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
        version = "0.8.1";
      };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2013 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <juhp@community.haskell.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM package creator for Haskell Cabal-based packages";
      description = "This package generates RPM packages from Haskell Cabal packages.\n\nRecent changes:\n\n* 0.8.1: word wrapping of descriptions\n\n* 0.8.0: new simpler revised Fedora packaging; check external commands available\n\n* 0.7.1: various bugfixes and minor improvments\n\n* 0.7.0: command arg for spec, srpm, or build; installs existing packaged depends with sudo yum\n\nSee <https://github.com/juhp/cabal-rpm/blob/master/NEWS> for more details.";
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
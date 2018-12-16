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
        version = "0.8.9";
      };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2014 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>, Jens Petersen <juhp@community.haskell.org>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM package creator for Haskell Cabal-based packages";
      description = "This package generates RPM packages from Haskell Cabal packages.\n\n* cblrpm spec: creates a .spec file from a hackage\n\n* cblrpm srpm: creates an source rpm package\n\n* cblrpm rpm: build a binary rpm package, installing depends with yum\n\n* cblrpm prep: unpacks package source\n\n* cblrpm builddep: yum install depends\n\n* cblrpm install: yum install depends and then cabal install\n\n* cblrpm depends: list hackage dependencies\n\n* cblrpm requires: list package dependencies";
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
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }
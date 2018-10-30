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
        version = "0.9.1";
      };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2014 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <juhp@community.haskell.org>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package generates RPM packages from Haskell Cabal packages.\n\n* cblrpm spec: create .spec file from a hackage\n\n* cblrpm srpm: create source rpm package\n\n* cblrpm local: build binary rpm package, installing depends with yum\n\n* cblrpm prep: unpack package source\n\n* cblrpm builddep: yum install depends\n\n* cblrpm install: yum install or rpmbuild depends and package\n\n* cblrpm depends: list hackage dependencies\n\n* cblrpm requires: list package dependencies\n\n* cblrpm missingdeps: recursively list missing dependencies\n\n* cblrpm diff: diff current spec file with newly generated one";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cblrpm" = {
          depends  = [
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
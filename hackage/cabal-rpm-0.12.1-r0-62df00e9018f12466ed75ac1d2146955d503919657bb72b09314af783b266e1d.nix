{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      old-locale = false;
      https = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal-rpm";
        version = "0.12.1";
      };
      license = "GPL-3.0-only";
      copyright = "2007-2008 Bryan O'Sullivan <bos@serpentine.com>,\n2012-2017 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhp@community.haskell.org>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/juhp/cabal-rpm";
      url = "";
      synopsis = "RPM packaging tool for Haskell Cabal-based packages";
      description = "This package provides a RPM packaging tool for Haskell Cabal-based packages.\n\ncabal-rpm has commands to generate a RPM spec file and srpm for a package.\nIt can rpmbuild packages, yum/dnf install their dependencies, prep packages,\nand install them. There are commands to list package dependencies and\nmissing dependencies. The diff command compares the current spec file\nwith a freshly generated one, the update command updates the spec file\nto latest version from Stackage or Hackage, and the refresh command updates\nthe spec file to the current cabal-rpm packaging.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-rpm" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
          ] ++ (if flags.old-locale
            then [
              (hsPkgs.old-locale)
              (hsPkgs.time)
            ]
            else [
              (hsPkgs.time)
            ])) ++ pkgs.lib.optionals (flags.https) [
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
          ];
        };
      };
    };
  }
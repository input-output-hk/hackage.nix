{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hledger-lib";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Reusable types and utilities for the hledger accounting tool and financial apps in general.";
      description = "hledger is a haskell port and friendly fork of John Wiegley's ledger accounting tool.\nThis package provides core data types, parsers and utilities used by the hledger tools.\nIt also aims to be a useful library for building h/ledger-compatible tools or unrelated financial apps in haskell.";
      buildType = "Simple";
    };
    components = {
      "hledger-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.regexpr)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.HUnit)
        ];
      };
    };
  }
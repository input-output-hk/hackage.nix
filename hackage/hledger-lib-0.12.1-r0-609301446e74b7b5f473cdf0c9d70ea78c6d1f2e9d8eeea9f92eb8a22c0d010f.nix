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
        name = "hledger-lib";
        version = "0.12.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Core types and utilities for working with hledger (or c++ ledger) data.";
      description = "This is the reusable core of the hledger financial app; use it to\nbuild hledger and c++-ledger compatible finance tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
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
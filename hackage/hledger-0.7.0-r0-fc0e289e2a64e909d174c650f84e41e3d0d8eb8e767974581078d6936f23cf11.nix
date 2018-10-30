{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      vty = false;
      web = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hledger";
        version = "0.7.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A command-line (or curses or web-based) double-entry accounting tool.";
      description = "hledger reads a plain text ledger file or timelog\ndescribing your transactions and displays precise\nbalance and register reports via command-line, curses\nor web interface.  It is a remix, in haskell, of John\nWiegley's excellent c++ ledger.  hledger aims to be a\npractical, accessible tool for end users and a useful\nlibrary for finance-minded haskell programmers.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell98)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.HUnit)
        ];
      };
      exes = {
        "hledger" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regexpr)
            (hsPkgs.split)
            (hsPkgs.testpack)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.HUnit)
            (hsPkgs.safe)
          ] ++ pkgs.lib.optional (flags.vty) (hsPkgs.vty)) ++ pkgs.lib.optionals (flags.web) [
            (hsPkgs.hsp)
            (hsPkgs.hsx)
            (hsPkgs.xhtml)
            (hsPkgs.loli)
            (hsPkgs.io-storage)
            (hsPkgs.hack-contrib)
            (hsPkgs.hack)
            (hsPkgs.hack-handler-happstack)
            (hsPkgs.happstack)
            (hsPkgs.happstack-data)
            (hsPkgs.happstack-server)
            (hsPkgs.happstack-state)
            (hsPkgs.HTTP)
            (hsPkgs.applicative-extras)
          ];
        };
      };
    };
  }
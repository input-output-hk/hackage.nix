{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { double = false; old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hledger-lib"; version = "0.27"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "Core data types, parsers and functionality for the hledger accounting tools";
      description = "This is a reusable library containing hledger's core functionality.\nhledger is a cross-platform program for tracking money, time, or\nany other commodity, using double-entry accounting and a simple,\neditable file format. It is inspired by and largely compatible\nwith ledger(1).  hledger provides command-line, curses and web\ninterfaces, and aims to be a reliable, practical tool for daily\nuse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.array)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.csv)
          (hsPkgs.Decimal)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.uglymemo)
          (hsPkgs.utf8-string)
          (hsPkgs.HUnit)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs.pretty-show)) ++ (if flags.old-locale
          then [ (hsPkgs.time) (hsPkgs.old-locale) ]
          else [ (hsPkgs.time) ]);
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.array)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.Decimal)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.transformers)
            (hsPkgs.uglymemo)
            (hsPkgs.utf8-string)
            (hsPkgs.HUnit)
            (hsPkgs.hledger-lib)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4") (hsPkgs.pretty-show)) ++ (if flags.old-locale
            then [ (hsPkgs.time) (hsPkgs.old-locale) ]
            else [ (hsPkgs.time) ]);
          };
        };
      };
    }
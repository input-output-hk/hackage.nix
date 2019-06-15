{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      hdbc-mysql = false;
      hdbc-odbc = false;
      llvm = false;
      printdbqueries = false;
      printdbrows = false;
      querydbconcurrently = true;
      static = false;
      threaded = true;
      unix = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "weekdaze"; version = "0.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2013-2015 Dr. Alistair Ward";
      maintainer = "mailto:weekdaze@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com/WeekDaze/weekdaze.html";
      url = "";
      synopsis = "A school-timetable problem-solver.";
      description = "An application which searches for a solution to the configured school-timetable problem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.extra)
          (hsPkgs.factory)
          (hsPkgs.filepath)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.toolshed)
          (hsPkgs.xhtml)
          ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) [
          (hsPkgs.convertible)
          (hsPkgs.HDBC)
          ];
        };
      exes = {
        "weekdaze" = {
          depends = ([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.factory)
            (hsPkgs.filepath)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.toolshed)
            (hsPkgs.weekdaze)
            (hsPkgs.xhtml)
            ] ++ (pkgs.lib).optionals (flags.hdbc-odbc || flags.hdbc-mysql) (([
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.HDBC)
            ] ++ (pkgs.lib).optional (flags.hdbc-mysql) (hsPkgs.HDBC-mysql)) ++ (pkgs.lib).optional (flags.hdbc-odbc) (hsPkgs.HDBC-odbc))) ++ (pkgs.lib).optional (flags.unix) (hsPkgs.unix);
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.factory)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.toolshed)
            (hsPkgs.weekdaze)
            ];
          };
        };
      };
    }
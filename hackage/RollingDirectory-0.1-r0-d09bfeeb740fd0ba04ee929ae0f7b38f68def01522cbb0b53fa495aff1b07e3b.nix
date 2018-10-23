{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "RollingDirectory";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "";
      url = "";
      synopsis = "Limits the size of a directory's contents";
      description = "This is a daemon which monitors a directory and limits it's content's size by deleting old entries";
      buildType = "Simple";
    };
    components = {
      exes = {
        "RollingDirectory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hinotify)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.monad-parallel)
            (hsPkgs.hsyslog)
          ] ++ (if compiler.isGhc && compiler.version.ge "7.2"
            then [
              (hsPkgs.hdaemonize-buildfix)
            ]
            else [ (hsPkgs.hdaemonize) ]);
        };
      };
      tests = {
        "MainTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }
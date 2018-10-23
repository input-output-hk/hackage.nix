{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      base4 = true;
      tests = false;
      replication = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-state";
        version = "0.5.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Event-based distributed state.";
      description = "Unplug your machine and restart and have your app recover to exactly where it left off. Happstack-State spares you the need to deal with all the marshalling, consistency, and configuration headache that you would have if you used an external DBMS for this purpose. Its component model makes it easy to compose big applications from smaller reliable parts. Use event subscription to trigger IO actions and support comet-style or irc-bot applications.";
      buildType = "Simple";
    };
    components = {
      "happstack-state" = {
        depends  = ((([
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-data)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optionals (flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.network)
        ]) ++ pkgs.lib.optionals (flags.replication) [
          (hsPkgs.hS3)
          (hsPkgs.bencode)
          (hsPkgs.process)
          (hsPkgs.SHA)
        ]) ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "happstack-state-tests" = {
          depends  = pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
        };
      };
    };
  }
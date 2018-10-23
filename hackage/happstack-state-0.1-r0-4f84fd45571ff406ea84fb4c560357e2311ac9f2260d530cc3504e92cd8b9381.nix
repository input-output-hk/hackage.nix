{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      base4 = true;
      tests = true;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "happstack-state";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Event-based distributed state.";
      description = "Unplug your machine and restart and have your app recover to exactly where it left off. HAppS-State spares you the need to deal with all the marshalling, consistency, and configuration headache that you would have if you used an external DBMS for this purpose. Its component model makes it easy to compose big applications from smaller reliable parts. Use event subscription to trigger IO actions and support comet-style or irc-bot applications.";
      buildType = "Simple";
    };
    components = {
      "happstack-state" = {
        depends  = (([
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.hslogger)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-data)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.hspread)
          (hsPkgs.extensible-exceptions)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optionals (flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "happstack-state-tests" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }
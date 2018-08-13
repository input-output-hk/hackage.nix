{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "timer-wheel";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/timer-wheel";
      url = "";
      synopsis = "A timer wheel";
      description = "This library provides a timer wheel data structure for\n\n* /O(1)/ registering @IO@ actions to fire after a given amount of time\n* /O(1)/ canceling registered actions\n\nIt is similar to @TimerManager@ from \"GHC.Event\", but can scale much better\nunder concurrent access patterns.\n\nAn unreleased version of this library has a @backpack@-based signature for\nselecting from a variety of different data structures used internally.\nHowever, until @backpack@ has broader support on Hackage, and in Haddocks,\netc, I decided to just hard-code something decent (a priority search queue).\nThis makes the @O(1)@ claims above a bit of a lie, as these rely on using a\nlinked list data structure internally.";
      buildType = "Simple";
    };
    components = {
      "timer-wheel" = {
        depends  = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.psqueues)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.4")) (hsPkgs.clock);
      };
    };
  }
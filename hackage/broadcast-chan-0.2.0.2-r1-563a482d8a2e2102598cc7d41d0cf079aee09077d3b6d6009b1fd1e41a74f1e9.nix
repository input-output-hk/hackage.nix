{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sync = false; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "broadcast-chan"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2019 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Closable, fair, single-wakeup channel type that avoids 0\nreader space leaks.";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!\n\nA closable, fair, single-wakeup channel that avoids the 0 reader space leak\nthat @\"Control.Concurrent.Chan\"@ from base suffers from.\n\nThe @Chan@ type from @\"Control.Concurrent.Chan\"@ consists of both a read\nand write end combined into a single value. This means there is always at\nleast 1 read end for a @Chan@, which keeps any values written to it alive.\nThis is a problem for applications/libraries that want to have a channel\nthat can have zero listeners.\n\nSuppose we have an library that produces events and we want to let users\nregister to receive events. If we use a channel and write all events to it,\nwe would like to drop and garbage collect any events that take place when\nthere are 0 listeners. The always present read end of @Chan@ from base\nmakes this impossible. We end up with a @Chan@ that forever accumulates\nmore and more events that will never get removed, resulting in a memory\nleak.\n\n@\"BroadcastChan\"@ splits channels into separate read and write ends. Any\nmessage written to a a channel with no existing read end is immediately\ndropped so it can be garbage collected. Once a read end is created, all\nmessages written to the channel will be accessible to that read end.\n\nOnce all read ends for a channel have disappeared and been garbage\ncollected, the channel will return to dropping messages as soon as they are\nwritten.\n\n__Why should I use \"BroadcastChan\" over \"Control.Concurrent.Chan\"?__\n\n* @\"BroadcastChan\"@ is closable,\n\n* @\"BroadcastChan\"@ has no 0 reader space leak,\n\n* @\"BroadcastChan\"@ has comparable or better performance.\n\n__Why should I use \"BroadcastChan\" over various (closable) STM channels?__\n\n* @\"BroadcastChan\"@ is single-wakeup,\n\n* @\"BroadcastChan\"@ is fair,\n\n* @\"BroadcastChan\"@ performs better under contention.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      benchmarks = {
        "sync" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = if flags.sync then true else false;
          };
        "channels" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."broadcast-chan" or ((hsPkgs.pkgs-errors).buildDepError "broadcast-chan"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
          buildable = true;
          };
        "utilities" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."broadcast-chan" or ((hsPkgs.pkgs-errors).buildDepError "broadcast-chan"))
            ];
          buildable = true;
          };
        };
      };
    }
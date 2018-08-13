{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      enable-timing-sensitive-tests = false;
      test-doctests = true;
      test-hlint = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mellon-core";
        version = "0.8.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/mellon#readme";
      url = "";
      synopsis = "Control physical access devices";
      description = "/Speak, friend, and enter./\n\n@mellon-core@ is a Haskell package for controlling physical access\ndevices designed for human factors, e.g., electric strikes. The\naccess control protocol is quite simple: a device is either locked,\nor it is unlocked until a particular date and time (an\n/expiration date/). Once the expiration date passes, the device is\nautomatically locked again. In the meantime, the device can be\nlocked immediately, overriding the unlocked state; or the unlock\nperiod can be extended.\n\nUser programs incorporate @mellon-core@ functionality via a\n/controller/, which is responsible for handling user lock and unlock\ncommands, and for scheduling and canceling unlock expirations.\n\nUser programs must also adapt their physical access devices to the\ninterface expected by the controller. For this purpose,\n@mellon-core@ defines a /device/ type with 2 simple 'IO' actions for\nlocking and unlocking the device. (@mellon-core@ does not provide\nany useful device implementations; see the companion @mellon-gpio@\npackage for a GPIO-driven implementation.)\n\nNote that @mellon-core@ does not provide authentication mechanisms\nor network services for interacting with controllers; that is the\ndomain of higher-level packages which use the base @mellon-core@\npackage (e.g., @mellon-web@).\n\n/On the use of UTC dates for timers/\n\n@mellon-core@ uses UTC dates for unlock expiration, rather than a\ntime delta or a monotonic clock. You might disagree with this\ndecision based on the common wisdom that it's a bad idea to use\n\\\"wall clock time\\\" (of which UTC is one flavor) for timers. In\ngeneral, the common wisdom is correct. Wall clocks have lots of\nproblems: they may not be accurate, they may disagree from one\nsystem to the next, they may \\\"jump around\\\" if the system is running\na time daemon such as NTP, and they occasionally do something\nunexpected like adding a leap second.\n\nIf your timers must be high-precision (i.e., this timer must run for\nexactly /n/ microseconds, for some definition of \\\"exactly\\\"), then\nthere's no argument: using a wall clock is a bad idea. However, as\n@mellon-core@ is designed for use with physical access devices,\nwhich themselves are typically designed for human factors, accuracy\nto within a second or two is acceptable in most cases. (If you have\nhigher-precision needs, especially for extreme safety- or\nsecurity-related scenarios, you should probably be using a real-time\nsystem anyway, not a Haskell program.)\n\nOnce the need for high precision is eliminated, and assuming that\nthe system(s) controlling your physical access devices use a\nsynchronized time source such as that provided by\n<https://en.wikipedia.org/wiki/Network_Time_Protocol NTP>, the\nadvantages of using UTC over most of the alternatives become\napparent:\n\n* Absolute time deltas without a common reference do not work well\nin networked environments, where network problems may appreciably\ndelay the delivery of commands from client to server. If a user\nwants to unlock a device for 7 seconds, does that mean 7 seconds\nfrom the clock time @T@ when the user presses \\\"send,\\\" or does it\nmean 7 seconds from opening to close, regardless of when the\nserver receives the command? Without a common reference, there is\nno way for the user to communicate her intent.\n\n* Monotonic clocks never go backwards, which is a nice invariant and\neliminates a problem that occurs in some NTP implementations.\nHowever, monotonic clocks are a) non-portable, and not even\nsupported on all systems; b) usually system-dependent, which\nrenders them useless when attempting to communicate time across\ntwo systems; c) sometimes even process-dependent, in which case\nthey're not even useful for communicating time between two\nprocesses on the same system; and d) often idle while the system\nis suspending or sleeping, in which case the clock does not move\nforward while the system is suspended, rendering the clock useless\nfor absolute timers if there's any possibility that the system\nwill be suspended or otherwise go into a low-power mode.\n\nUsing the TAI coordinate system rather than UTC has the advantage of\nguaranteeing that every (TAI) day is exactly 86400 (TAI) seconds,\nunlike UTC and all of the time systems based on it, where very\nrarely a day may have 86401 seconds, i.e., one standard day plus 1\nleap second. If TAI were well-supported and generally available,\n@mellon-core@ would probably use it, but circa 2016 it is not.\nAnyway, at worst, a @mellon-core@ unlock command which spans a time\nperiod in which a leap second is added will expire approximately 1\nsecond too soon / too early, depending on whether the user accounted\nfor the leap second when she issued the command. As this error is\nmore or less within the expected accuracy of a @mellon-core@ system\nunder normal operation (due to the vagaries of thread scheduling,\nand not even accounting for clock drift and other real-world\nfactors), it doesn't really seem worth the effort just to avoid the\nminor inconvenience of leap seconds.\n\nIn short, synchronizing time (and timers) across multiple systems is\na very difficult problem, and one which the universally-supported\nNetwork Time Protocol attempts to address, mostly successfully.\nGiven its intended application to controlling physical access for\nhuman beings, most likely in a networked environment, @mellon-core@\nmakes the choice of relying on a working, accurate NTP (or other\nwall-clock synchronization) deployment for coordinating and\nsynchronizing time across devices. If you cannot guarantee accurate\nwall clock time in your system, @mellon-core@ will not work\nproperly, and you should look for an alternative solution.";
      buildType = "Simple";
    };
    components = {
      "mellon-core" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "doctest" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.protolude)
            (hsPkgs.quickcheck-instances)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            (hsPkgs.protolude)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mellon-core)
            (hsPkgs.mtl)
            (hsPkgs.protolude)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }
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
      specVersion = "1.2";
      identifier = {
        name = "elerea";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A minimalistic FRP library";
      description = "Elerea (Eventless reactivity) is a tiny continuous-time FRP\nimplementation without the notion of event-based switching and\nsampling, with first-class signals (time-varying values). Reactivity\nis provided through a latching mechanism where a signal changes its\nbehaviour as dictated by a boolean input signal.\n\nElerea provides an easy to use applicative interface, supports\nrecursive signals (a definition like @sine = integral 0 (integral 1\n(-sine))@ works without a hitch) and arbitrary external\ninput. Cycles are allowed by the implicit delay on stateful transfer\nfunctions. For the time being it is not possible to create arbitrary\ntransfer functions without a delay, but this limitation can be\nremoved later.\n\nThis is a minimal library that defines only some basic primitives,\nand you are advised to install @elerea-examples@ as well to get an\nidea how to build non-trivial systems with it. The examples are\nseparated in order to minimise the dependencies of the core library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }
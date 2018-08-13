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
      specVersion = "1.2";
      identifier = {
        name = "elerea";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A minimalistic FRP library";
      description = "Elerea (Eventless reactivity) is a tiny continuous-time FRP\nimplementation without the notion of event-based switching and\nsampling, with first-class signals (time-varying values). Reactivity\nis provided through a latching mechanism where a signal changes its\nbehaviour as dictated by a boolean input signal.\n\nElerea provides an easy to use applicative interface, supports\nrecursive signals (a definition like @sine = integral 0 (integral 1\n(-sine))@ works without a hitch) and arbitrary external input. Cyclic\ndependencies are detected on the fly and resolved by inserting delays\ndynamically, unless the user does it explicitly.\n\nThis is a minimal library that defines only some basic primitives,\nand you are advised to install @elerea-examples@ as well to get an\nidea how to build non-trivial systems with it. The examples are\nseparated in order to minimise the dependencies of the core library.";
      buildType = "Simple";
    };
    components = {
      "elerea" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }
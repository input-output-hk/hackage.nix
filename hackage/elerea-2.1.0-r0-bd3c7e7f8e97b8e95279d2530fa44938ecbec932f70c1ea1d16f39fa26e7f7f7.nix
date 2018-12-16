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
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A minimalistic FRP library";
      description = "Elerea (Eventless reactivity) is a tiny discrete time FRP\nimplementation without the notion of event-based switching and\nsampling, with first-class signals (time-varying values).  Reactivity\nis provided through various higher-order constructs that also allow\nthe user to work with arbitrary time-varying structures containing\nlive signals.\n\nStateful signals can be safely generated at any time through a\nspecialised monad, while stateless combinators can be used in a\npurely applicative style.  Elerea signals can be defined recursively,\nand external input is trivial to attach.  The library comes in four\nmajor variants:\n\n* Simple: signals are plain discrete streams isomorphic to functions\nover natural numbers;\n\n* Param: adds a globally accessible input signal for convenience;\n\n* Clocked: adds the ability to freeze whole subnetworks at will;\n\n* Delayed: attempts to resolve instantaneous dependency cycles\n(i.e. cycles without a delay); this variant is likely to be\ndeprecated in the near future.\n\nThe first three variants come with precise denotational semantics.\n\nThis is a minimal library that defines only some basic primitives,\nand you are advised to install @elerea-examples@ as well to get an\nidea how to build non-trivial systems with it.  The examples are\nseparated in order to minimise the dependencies of the core library.\nThe @dow@ package contains a full game built on top of the simple\nvariant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mersenne-random)
        ];
      };
    };
  }
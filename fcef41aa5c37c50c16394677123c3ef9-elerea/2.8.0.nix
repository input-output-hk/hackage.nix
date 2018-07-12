{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "elerea";
          version = "2.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2012, Patai Gergely";
        maintainer = "Patai Gergely (patai.gergely@gmail.com)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "A minimalistic FRP library";
        description = "Elerea (Eventless reactivity) is a tiny discrete time FRP\nimplementation without the notion of event-based switching and\nsampling, with first-class signals (time-varying values).  Reactivity\nis provided through various higher-order constructs that also allow\nthe user to work with arbitrary time-varying structures containing\nlive signals.  Signals have precise and simple denotational\nsemantics.\n\nStateful signals can be safely generated at any time through a\nmonadic interface, while stateless combinators can be used in a\npurely applicative style.  Elerea signals can be defined recursively,\nand external input is trivial to attach.  The library comes in three\nmajor variants:\n\n* Simple: signals are plain discrete streams isomorphic to functions\nover natural numbers;\n\n* Param: adds a globally accessible input signal for convenience;\n\n* Clocked: adds the ability to freeze whole subnetworks at will.\n\nThis is a minimal library that defines only some basic primitives,\nand you are advised to install @elerea-examples@ as well to get an\nidea how to build non-trivial systems with it.  The examples are\nseparated in order to minimise the dependencies of the core library.\nThe @dow@ package contains a full game built on top of the simple\nvariant.\n\nThe basic idea of the implementation is described in the WFLP 2010\npaper /Efficient and Compositional Higher-Order Streams/\n(<http://sgate.emt.bme.hu/documents/patai/publications/PataiWFLP2010.pdf>).\n\nAdditional contributions: Takano Akio, Mitsutoshi Aoe";
        buildType = "Simple";
      };
      components = {
        "elerea" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }